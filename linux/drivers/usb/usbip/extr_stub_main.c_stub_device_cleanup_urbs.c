
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct stub_priv {int num_urbs; int * urbs; } ;
struct stub_device {TYPE_1__* udev; } ;
struct TYPE_2__ {int dev; } ;


 int dev_dbg (int *,char*) ;
 int stub_free_priv_and_urb (struct stub_priv*) ;
 struct stub_priv* stub_priv_pop (struct stub_device*) ;
 int usb_kill_urb (int ) ;

void stub_device_cleanup_urbs(struct stub_device *sdev)
{
 struct stub_priv *priv;
 int i;

 dev_dbg(&sdev->udev->dev, "Stub device cleaning up urbs\n");

 while ((priv = stub_priv_pop(sdev))) {
  for (i = 0; i < priv->num_urbs; i++)
   usb_kill_urb(priv->urbs[i]);

  stub_free_priv_and_urb(priv);
 }
}
