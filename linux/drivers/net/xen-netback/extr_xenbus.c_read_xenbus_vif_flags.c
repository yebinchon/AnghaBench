
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xenvif {int can_sg; int ip_csum; int ipv6_csum; int gso_mask; scalar_t__ stall_timeout; int drain_timeout; } ;
struct xenbus_device {int otherend; } ;
struct backend_info {struct xenvif* vif; struct xenbus_device* dev; } ;


 int ENOENT ;
 int EOPNOTSUPP ;
 int GSO_BIT (int ) ;
 int TCPV4 ;
 int TCPV6 ;
 int XBT_NIL ;
 int msecs_to_jiffies (int) ;
 int xenbus_dev_fatal (struct xenbus_device*,int,char*,int ) ;
 scalar_t__ xenbus_read_unsigned (int ,char*,int ) ;
 int xenbus_scanf (int ,int ,char*,char*,unsigned int*) ;

__attribute__((used)) static int read_xenbus_vif_flags(struct backend_info *be)
{
 struct xenvif *vif = be->vif;
 struct xenbus_device *dev = be->dev;
 unsigned int rx_copy;
 int err;

 err = xenbus_scanf(XBT_NIL, dev->otherend, "request-rx-copy", "%u",
      &rx_copy);
 if (err == -ENOENT) {
  err = 0;
  rx_copy = 0;
 }
 if (err < 0) {
  xenbus_dev_fatal(dev, err, "reading %s/request-rx-copy",
     dev->otherend);
  return err;
 }
 if (!rx_copy)
  return -EOPNOTSUPP;

 if (!xenbus_read_unsigned(dev->otherend, "feature-rx-notify", 0)) {




  be->vif->drain_timeout = msecs_to_jiffies(30);
  be->vif->stall_timeout = 0;
 }

 vif->can_sg = !!xenbus_read_unsigned(dev->otherend, "feature-sg", 0);

 vif->gso_mask = 0;

 if (xenbus_read_unsigned(dev->otherend, "feature-gso-tcpv4", 0))
  vif->gso_mask |= GSO_BIT(TCPV4);

 if (xenbus_read_unsigned(dev->otherend, "feature-gso-tcpv6", 0))
  vif->gso_mask |= GSO_BIT(TCPV6);

 vif->ip_csum = !xenbus_read_unsigned(dev->otherend,
          "feature-no-csum-offload", 0);

 vif->ipv6_csum = !!xenbus_read_unsigned(dev->otherend,
      "feature-ipv6-csum-offload", 0);

 return 0;
}
