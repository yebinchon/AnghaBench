
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u32 ;
struct usb_interface {int dummy; } ;
struct usb_device_id {int dummy; } ;
struct TYPE_5__ {int bcdDevice; int idProduct; int idVendor; } ;
struct usb_device {int dev; TYPE_1__ descriptor; int serial; int product; int manufacturer; } ;
struct ufx_data {int kref; int * gdev; int usb_active; int free_framebuffer_work; int pseudo_palette; struct fb_info* info; struct usb_device* udev; } ;
struct TYPE_7__ {int modedb; } ;
struct TYPE_6__ {int smem_len; } ;
struct TYPE_8__ {int yres; int xres; } ;
struct fb_info {int modelist; int screen_base; TYPE_3__ monspecs; int cmap; TYPE_2__ fix; TYPE_4__ var; int node; int * fbops; int pseudo_palette; struct ufx_data* par; } ;


 int BUG_ON (int) ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int INIT_DELAYED_WORK (int *,int ) ;
 int INIT_LIST_HEAD (int *) ;
 int MAX_TRANSFER ;
 int WRITES_IN_FLIGHT ;
 int atomic_set (int *,int) ;
 int check_warn_goto_error (int,char*,...) ;
 int console ;
 int dev_dbg (int *,char*,...) ;
 int dev_err (int *,char*,...) ;
 int dev_info (int *,char*,int ,int ,int ,int) ;
 int fb_alloc_cmap (int *,int,int ) ;
 int fb_dealloc_cmap (int *) ;
 int fb_defio ;
 int fb_destroy_modedb (int ) ;
 int fb_destroy_modelist (int *) ;
 struct fb_info* framebuffer_alloc (int ,int *) ;
 int framebuffer_release (struct fb_info*) ;
 struct usb_device* interface_to_usbdev (struct usb_interface*) ;
 int kref_get (int *) ;
 int kref_init (int *) ;
 int kref_put (int *,int ) ;
 struct ufx_data* kzalloc (int,int ) ;
 int le16_to_cpu (int ) ;
 int register_framebuffer (struct fb_info*) ;
 int ufx_alloc_urb_list (struct ufx_data*,int ,int ) ;
 int ufx_config_ddr2 (struct ufx_data*) ;
 int ufx_config_sys_clk (struct ufx_data*) ;
 int ufx_free ;
 int ufx_free_framebuffer_work ;
 int ufx_i2c_init (struct ufx_data*) ;
 int ufx_lite_reset (struct ufx_data*) ;
 int ufx_ops ;
 int ufx_ops_check_var (TYPE_4__*,struct fb_info*) ;
 int ufx_ops_set_par (struct fb_info*) ;
 int ufx_reg_read (struct ufx_data*,int,int *) ;
 int ufx_reg_set_bits (struct ufx_data*,int,int) ;
 int ufx_setup_modes (struct ufx_data*,struct fb_info*,int *,int ) ;
 int usb_set_intfdata (struct usb_interface*,struct ufx_data*) ;
 int vfree (int ) ;

__attribute__((used)) static int ufx_usb_probe(struct usb_interface *interface,
   const struct usb_device_id *id)
{
 struct usb_device *usbdev;
 struct ufx_data *dev;
 struct fb_info *info;
 int retval;
 u32 id_rev, fpga_rev;


 usbdev = interface_to_usbdev(interface);
 BUG_ON(!usbdev);

 dev = kzalloc(sizeof(*dev), GFP_KERNEL);
 if (dev == ((void*)0)) {
  dev_err(&usbdev->dev, "ufx_usb_probe: failed alloc of dev struct\n");
  return -ENOMEM;
 }


 kref_init(&dev->kref);
 kref_get(&dev->kref);

 dev->udev = usbdev;
 dev->gdev = &usbdev->dev;
 usb_set_intfdata(interface, dev);

 dev_dbg(dev->gdev, "%s %s - serial #%s\n",
  usbdev->manufacturer, usbdev->product, usbdev->serial);
 dev_dbg(dev->gdev, "vid_%04x&pid_%04x&rev_%04x driver's ufx_data struct at %p\n",
  le16_to_cpu(usbdev->descriptor.idVendor),
  le16_to_cpu(usbdev->descriptor.idProduct),
  le16_to_cpu(usbdev->descriptor.bcdDevice), dev);
 dev_dbg(dev->gdev, "console enable=%d\n", console);
 dev_dbg(dev->gdev, "fb_defio enable=%d\n", fb_defio);

 if (!ufx_alloc_urb_list(dev, WRITES_IN_FLIGHT, MAX_TRANSFER)) {
  dev_err(dev->gdev, "ufx_alloc_urb_list failed\n");
  goto e_nomem;
 }




 info = framebuffer_alloc(0, &usbdev->dev);
 if (!info)
  goto e_nomem;

 dev->info = info;
 info->par = dev;
 info->pseudo_palette = dev->pseudo_palette;
 info->fbops = &ufx_ops;

 retval = fb_alloc_cmap(&info->cmap, 256, 0);
 if (retval < 0) {
  dev_err(dev->gdev, "fb_alloc_cmap failed %x\n", retval);
  goto destroy_modedb;
 }

 INIT_DELAYED_WORK(&dev->free_framebuffer_work,
     ufx_free_framebuffer_work);

 INIT_LIST_HEAD(&info->modelist);

 retval = ufx_reg_read(dev, 0x3000, &id_rev);
 check_warn_goto_error(retval, "error %d reading 0x3000 register from device", retval);
 dev_dbg(dev->gdev, "ID_REV register value 0x%08x", id_rev);

 retval = ufx_reg_read(dev, 0x3004, &fpga_rev);
 check_warn_goto_error(retval, "error %d reading 0x3004 register from device", retval);
 dev_dbg(dev->gdev, "FPGA_REV register value 0x%08x", fpga_rev);

 dev_dbg(dev->gdev, "resetting device");
 retval = ufx_lite_reset(dev);
 check_warn_goto_error(retval, "error %d resetting device", retval);

 dev_dbg(dev->gdev, "configuring system clock");
 retval = ufx_config_sys_clk(dev);
 check_warn_goto_error(retval, "error %d configuring system clock", retval);

 dev_dbg(dev->gdev, "configuring DDR2 controller");
 retval = ufx_config_ddr2(dev);
 check_warn_goto_error(retval, "error %d initialising DDR2 controller", retval);

 dev_dbg(dev->gdev, "configuring I2C controller");
 retval = ufx_i2c_init(dev);
 check_warn_goto_error(retval, "error %d initialising I2C controller", retval);

 dev_dbg(dev->gdev, "selecting display mode");
 retval = ufx_setup_modes(dev, info, ((void*)0), 0);
 check_warn_goto_error(retval, "unable to find common mode for display and adapter");

 retval = ufx_reg_set_bits(dev, 0x4000, 0x00000001);
 check_warn_goto_error(retval, "error %d enabling graphics engine", retval);


 atomic_set(&dev->usb_active, 1);

 dev_dbg(dev->gdev, "checking var");
 retval = ufx_ops_check_var(&info->var, info);
 check_warn_goto_error(retval, "error %d ufx_ops_check_var", retval);

 dev_dbg(dev->gdev, "setting par");
 retval = ufx_ops_set_par(info);
 check_warn_goto_error(retval, "error %d ufx_ops_set_par", retval);

 dev_dbg(dev->gdev, "registering framebuffer");
 retval = register_framebuffer(info);
 check_warn_goto_error(retval, "error %d register_framebuffer", retval);

 dev_info(dev->gdev, "SMSC UDX USB device /dev/fb%d attached. %dx%d resolution."
  " Using %dK framebuffer memory\n", info->node,
  info->var.xres, info->var.yres, info->fix.smem_len >> 10);

 return 0;

error:
 fb_dealloc_cmap(&info->cmap);
destroy_modedb:
 fb_destroy_modedb(info->monspecs.modedb);
 vfree(info->screen_base);
 fb_destroy_modelist(&info->modelist);
 framebuffer_release(info);
put_ref:
 kref_put(&dev->kref, ufx_free);
 kref_put(&dev->kref, ufx_free);
 return retval;

e_nomem:
 retval = -ENOMEM;
 goto put_ref;
}
