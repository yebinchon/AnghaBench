
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xenvif {int dummy; } ;
struct xenbus_device {int otherend; } ;
struct backend_info {struct xenvif* vif; struct xenbus_device* dev; } ;
typedef unsigned int grant_ref_t ;


 int XBT_NIL ;
 int xenbus_dev_fatal (struct xenbus_device*,int,char*,unsigned int,...) ;
 int xenbus_scanf (int ,int ,char*,char*,unsigned int*) ;
 int xenvif_connect_ctrl (struct xenvif*,unsigned int,unsigned int) ;

__attribute__((used)) static int connect_ctrl_ring(struct backend_info *be)
{
 struct xenbus_device *dev = be->dev;
 struct xenvif *vif = be->vif;
 unsigned int val;
 grant_ref_t ring_ref;
 unsigned int evtchn;
 int err;

 err = xenbus_scanf(XBT_NIL, dev->otherend,
      "ctrl-ring-ref", "%u", &val);
 if (err < 0)
  goto done;

 ring_ref = val;

 err = xenbus_scanf(XBT_NIL, dev->otherend,
      "event-channel-ctrl", "%u", &val);
 if (err < 0) {
  xenbus_dev_fatal(dev, err,
     "reading %s/event-channel-ctrl",
     dev->otherend);
  goto fail;
 }

 evtchn = val;

 err = xenvif_connect_ctrl(vif, ring_ref, evtchn);
 if (err) {
  xenbus_dev_fatal(dev, err,
     "mapping shared-frame %u port %u",
     ring_ref, evtchn);
  goto fail;
 }

done:
 return 0;

fail:
 return err;
}
