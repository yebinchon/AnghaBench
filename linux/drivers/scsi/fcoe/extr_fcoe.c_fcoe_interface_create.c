
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dev; } ;
struct fcoe_interface {int dummy; } ;
struct fcoe_ctlr_device {int dummy; } ;
struct fcoe_ctlr {int get_src_addr; int update_mac; int send; struct fcoe_ctlr_device* cdev; } ;
typedef enum fip_mode { ____Placeholder_fip_mode } fip_mode ;


 int EBUSY ;
 int ENOMEM ;
 struct fcoe_interface* ERR_PTR (int) ;
 int FCOE_DBG (char*) ;
 int FCOE_NETDEV_DBG (struct net_device*,char*) ;
 int THIS_MODULE ;
 int dev_hold (struct net_device*) ;
 int dev_put (struct net_device*) ;
 int fcoe_ctlr_destroy (struct fcoe_ctlr*) ;
 struct fcoe_ctlr_device* fcoe_ctlr_device_add (int *,int *,int) ;
 int fcoe_ctlr_device_delete (struct fcoe_ctlr_device*) ;
 struct fcoe_ctlr* fcoe_ctlr_device_priv (struct fcoe_ctlr_device*) ;
 int fcoe_ctlr_init (struct fcoe_ctlr*,int) ;
 struct fcoe_interface* fcoe_ctlr_priv (struct fcoe_ctlr*) ;
 int fcoe_fip_send ;
 int fcoe_get_src_mac ;
 int fcoe_interface_setup (struct fcoe_interface*,struct net_device*) ;
 int fcoe_sysfs_templ ;
 int fcoe_update_src_mac ;
 int module_put (int ) ;
 int try_module_get (int ) ;

__attribute__((used)) static struct fcoe_interface *fcoe_interface_create(struct net_device *netdev,
          enum fip_mode fip_mode)
{
 struct fcoe_ctlr_device *ctlr_dev;
 struct fcoe_ctlr *ctlr;
 struct fcoe_interface *fcoe;
 int size;
 int err;

 if (!try_module_get(THIS_MODULE)) {
  FCOE_NETDEV_DBG(netdev,
    "Could not get a reference to the module\n");
  fcoe = ERR_PTR(-EBUSY);
  goto out;
 }

 size = sizeof(struct fcoe_ctlr) + sizeof(struct fcoe_interface);
 ctlr_dev = fcoe_ctlr_device_add(&netdev->dev, &fcoe_sysfs_templ,
     size);
 if (!ctlr_dev) {
  FCOE_DBG("Failed to add fcoe_ctlr_device\n");
  fcoe = ERR_PTR(-ENOMEM);
  goto out_putmod;
 }

 ctlr = fcoe_ctlr_device_priv(ctlr_dev);
 ctlr->cdev = ctlr_dev;
 fcoe = fcoe_ctlr_priv(ctlr);

 dev_hold(netdev);




 fcoe_ctlr_init(ctlr, fip_mode);
 ctlr->send = fcoe_fip_send;
 ctlr->update_mac = fcoe_update_src_mac;
 ctlr->get_src_addr = fcoe_get_src_mac;

 err = fcoe_interface_setup(fcoe, netdev);
 if (err) {
  fcoe_ctlr_destroy(ctlr);
  fcoe_ctlr_device_delete(ctlr_dev);
  dev_put(netdev);
  fcoe = ERR_PTR(err);
  goto out_putmod;
 }

 goto out;

out_putmod:
 module_put(THIS_MODULE);
out:
 return fcoe;
}
