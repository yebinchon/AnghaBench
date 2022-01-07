
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_port {int dev; } ;


 int dev_dbg (int *,char*,int ,...) ;
 int dev_name (int *) ;
 int link_peers (struct usb_port*,struct usb_port*) ;
 int pr_warn_once (char*) ;
 int usb_port_block_power_off ;

__attribute__((used)) static void link_peers_report(struct usb_port *left, struct usb_port *right)
{
 int rc;

 rc = link_peers(left, right);
 if (rc == 0) {
  dev_dbg(&left->dev, "peered to %s\n", dev_name(&right->dev));
 } else {
  dev_dbg(&left->dev, "failed to peer to %s (%d)\n",
    dev_name(&right->dev), rc);
  pr_warn_once("usb: port power management may be unreliable\n");
  usb_port_block_power_off = 1;
 }
}
