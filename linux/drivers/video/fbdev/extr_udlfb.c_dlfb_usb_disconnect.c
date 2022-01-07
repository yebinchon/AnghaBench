
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_interface {int dev; } ;
struct fb_info {int dev; } ;
struct dlfb_data {int virtualized; int usb_active; struct fb_info* info; } ;


 int ARRAY_SIZE (int *) ;
 int atomic_set (int *,int ) ;
 int dev_dbg (int *,char*) ;
 int device_remove_bin_file (int ,int *) ;
 int device_remove_file (int ,int *) ;
 int dlfb_free_urb_list (struct dlfb_data*) ;
 int edid_attr ;
 int * fb_device_attrs ;
 int unregister_framebuffer (struct fb_info*) ;
 struct dlfb_data* usb_get_intfdata (struct usb_interface*) ;

__attribute__((used)) static void dlfb_usb_disconnect(struct usb_interface *intf)
{
 struct dlfb_data *dlfb;
 struct fb_info *info;
 int i;

 dlfb = usb_get_intfdata(intf);
 info = dlfb->info;

 dev_dbg(&intf->dev, "USB disconnect starting\n");


 dlfb->virtualized = 1;


 atomic_set(&dlfb->usb_active, 0);


 dlfb_free_urb_list(dlfb);


 for (i = 0; i < ARRAY_SIZE(fb_device_attrs); i++)
  device_remove_file(info->dev, &fb_device_attrs[i]);
 device_remove_bin_file(info->dev, &edid_attr);

 unregister_framebuffer(info);
}
