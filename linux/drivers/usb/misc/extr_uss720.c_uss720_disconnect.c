
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_interface {int dev; } ;
struct parport_uss720_private {int ref_count; int * pp; int * usbdev; } ;
struct parport {struct parport_uss720_private* private_data; } ;


 int destroy_priv ;
 int dev_dbg (int *,char*) ;
 int kill_all_async_requests_priv (struct parport_uss720_private*) ;
 int kref_put (int *,int ) ;
 int parport_put_port (struct parport*) ;
 int parport_remove_port (struct parport*) ;
 struct parport* usb_get_intfdata (struct usb_interface*) ;
 int usb_set_intfdata (struct usb_interface*,int *) ;

__attribute__((used)) static void uss720_disconnect(struct usb_interface *intf)
{
 struct parport *pp = usb_get_intfdata(intf);
 struct parport_uss720_private *priv;

 dev_dbg(&intf->dev, "disconnect\n");
 usb_set_intfdata(intf, ((void*)0));
 if (pp) {
  priv = pp->private_data;
  priv->usbdev = ((void*)0);
  priv->pp = ((void*)0);
  dev_dbg(&intf->dev, "parport_remove_port\n");
  parport_remove_port(pp);
  parport_put_port(pp);
  kill_all_async_requests_priv(priv);
  kref_put(&priv->ref_count, destroy_priv);
 }
 dev_dbg(&intf->dev, "disconnect done\n");
}
