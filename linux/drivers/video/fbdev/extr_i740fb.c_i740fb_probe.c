
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_5__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int u8 ;
struct pci_device_id {int dummy; } ;
struct pci_dev {int dev; } ;
struct i740fb_par {int has_sgram; int ddc_registered; int regs; int ddc_adapter; int wc_cookie; int pseudo_palette; int open_lock; } ;
struct fb_videomode {int dummy; } ;
struct TYPE_7__ {int smem_len; void* smem_start; int id; int mmio_len; void* mmio_start; } ;
struct TYPE_8__ {int bits_per_pixel; int yres_virtual; int xres_virtual; int activate; } ;
struct TYPE_9__ {int * modedb; int modedb_len; } ;
struct fb_info {int screen_size; int flags; int screen_base; int cmap; TYPE_1__ fix; int device; TYPE_2__ var; TYPE_5__ monspecs; int modelist; int pseudo_palette; int * fbops; struct i740fb_par* par; } ;


 int DRAM_RAS_PRECHARGE ;
 int DRAM_RAS_TIMING ;
 int DRAM_ROW_1 ;
 int DRAM_ROW_1_SDRAM ;
 int DRAM_ROW_BNDRY_0 ;
 int DRAM_ROW_BNDRY_1 ;
 int DRAM_ROW_CNTL_LO ;
 int DRAM_ROW_TYPE ;
 int EINVAL ;
 int ENOMEM ;
 int FBINFO_DEFAULT ;
 int FBINFO_HWACCEL_YPAN ;
 int FB_ACTIVATE_NOW ;
 scalar_t__ XRX ;
 int arch_phys_wc_add (void*,int) ;
 int dev_err (int ,char*,...) ;
 int fb_alloc_cmap (int *,int,int ) ;
 int * fb_ddc_read (int *) ;
 int fb_dealloc_cmap (int *) ;
 int fb_destroy_modedb (int *) ;
 int fb_edid_to_monspecs (int *,TYPE_5__*) ;
 struct fb_videomode* fb_find_best_display (TYPE_5__*,int *) ;
 int fb_find_mode (TYPE_2__*,struct fb_info*,char*,int *,int ,int *,int) ;
 int fb_info (struct fb_info*,char*,int ,...) ;
 int fb_videomode_to_modelist (int *,int ,int *) ;
 int fb_videomode_to_var (TYPE_2__*,struct fb_videomode const*) ;
 struct fb_info* framebuffer_alloc (int,int *) ;
 int framebuffer_release (struct fb_info*) ;
 int i2c_del_adapter (int *) ;
 int i740fb_check_var (TYPE_2__*,struct fb_info*) ;
 TYPE_1__ i740fb_fix ;
 int i740fb_ops ;
 scalar_t__ i740fb_setup_ddc_bus (struct fb_info*) ;
 int i740inb (struct i740fb_par*,scalar_t__) ;
 int i740inreg (struct i740fb_par*,scalar_t__,int ) ;
 int i740outb (struct i740fb_par*,scalar_t__,int ) ;
 int kfree (int *) ;
 char* mode_option ;
 scalar_t__ mtrr ;
 int mutex_init (int *) ;
 int pci_enable_device (struct pci_dev*) ;
 int pci_ioremap_bar (struct pci_dev*,int) ;
 int pci_ioremap_wc_bar (struct pci_dev*,int ) ;
 int pci_iounmap (struct pci_dev*,int ) ;
 int pci_name (struct pci_dev*) ;
 int pci_release_regions (struct pci_dev*) ;
 int pci_request_regions (struct pci_dev*,int ) ;
 int pci_resource_len (struct pci_dev*,int) ;
 void* pci_resource_start (struct pci_dev*,int) ;
 int pci_set_drvdata (struct pci_dev*,struct fb_info*) ;
 int register_framebuffer (struct fb_info*) ;

__attribute__((used)) static int i740fb_probe(struct pci_dev *dev, const struct pci_device_id *ent)
{
 struct fb_info *info;
 struct i740fb_par *par;
 int ret, tmp;
 bool found = 0;
 u8 *edid;

 info = framebuffer_alloc(sizeof(struct i740fb_par), &(dev->dev));
 if (!info)
  return -ENOMEM;

 par = info->par;
 mutex_init(&par->open_lock);

 info->var.activate = FB_ACTIVATE_NOW;
 info->var.bits_per_pixel = 8;
 info->fbops = &i740fb_ops;
 info->pseudo_palette = par->pseudo_palette;

 ret = pci_enable_device(dev);
 if (ret) {
  dev_err(info->device, "cannot enable PCI device\n");
  goto err_enable_device;
 }

 ret = pci_request_regions(dev, info->fix.id);
 if (ret) {
  dev_err(info->device, "error requesting regions\n");
  goto err_request_regions;
 }

 info->screen_base = pci_ioremap_wc_bar(dev, 0);
 if (!info->screen_base) {
  dev_err(info->device, "error remapping base\n");
  ret = -ENOMEM;
  goto err_ioremap_1;
 }

 par->regs = pci_ioremap_bar(dev, 1);
 if (!par->regs) {
  dev_err(info->device, "error remapping MMIO\n");
  ret = -ENOMEM;
  goto err_ioremap_2;
 }


 if ((i740inreg(par, XRX, DRAM_ROW_TYPE) & DRAM_ROW_1)
       == DRAM_ROW_1_SDRAM)
  i740outb(par, XRX, DRAM_ROW_BNDRY_1);
 else
  i740outb(par, XRX, DRAM_ROW_BNDRY_0);
 info->screen_size = i740inb(par, XRX + 1) * 1024 * 1024;

 tmp = i740inreg(par, XRX, DRAM_ROW_CNTL_LO);
 par->has_sgram = !((tmp & DRAM_RAS_TIMING) ||
      (tmp & DRAM_RAS_PRECHARGE));

 fb_info(info, "Intel740 on %s, %ld KB %s\n",
  pci_name(dev), info->screen_size >> 10,
  par->has_sgram ? "SGRAM" : "SDRAM");

 info->fix = i740fb_fix;
 info->fix.mmio_start = pci_resource_start(dev, 1);
 info->fix.mmio_len = pci_resource_len(dev, 1);
 info->fix.smem_start = pci_resource_start(dev, 0);
 info->fix.smem_len = info->screen_size;
 info->flags = FBINFO_DEFAULT | FBINFO_HWACCEL_YPAN;

 if (i740fb_setup_ddc_bus(info) == 0) {
  par->ddc_registered = 1;
  edid = fb_ddc_read(&par->ddc_adapter);
  if (edid) {
   fb_edid_to_monspecs(edid, &info->monspecs);
   kfree(edid);
   if (!info->monspecs.modedb)
    dev_err(info->device,
     "error getting mode database\n");
   else {
    const struct fb_videomode *m;

    fb_videomode_to_modelist(
     info->monspecs.modedb,
     info->monspecs.modedb_len,
     &info->modelist);
    m = fb_find_best_display(&info->monspecs,
        &info->modelist);
    if (m) {
     fb_videomode_to_var(&info->var, m);

     if (!i740fb_check_var(&info->var, info))
      found = 1;
    }
   }
  }
 }

 if (!mode_option && !found)
  mode_option = "640x480-8@60";

 if (mode_option) {
  ret = fb_find_mode(&info->var, info, mode_option,
       info->monspecs.modedb,
       info->monspecs.modedb_len,
       ((void*)0), info->var.bits_per_pixel);
  if (!ret || ret == 4) {
   dev_err(info->device, "mode %s not found\n",
    mode_option);
   ret = -EINVAL;
  }
 }

 fb_destroy_modedb(info->monspecs.modedb);
 info->monspecs.modedb = ((void*)0);


 info->var.yres_virtual = info->fix.smem_len * 8 /
   (info->var.bits_per_pixel * info->var.xres_virtual);

 if (ret == -EINVAL)
  goto err_find_mode;

 ret = fb_alloc_cmap(&info->cmap, 256, 0);
 if (ret) {
  dev_err(info->device, "cannot allocate colormap\n");
  goto err_alloc_cmap;
 }

 ret = register_framebuffer(info);
 if (ret) {
  dev_err(info->device, "error registering framebuffer\n");
  goto err_reg_framebuffer;
 }

 fb_info(info, "%s frame buffer device\n", info->fix.id);
 pci_set_drvdata(dev, info);
 if (mtrr)
  par->wc_cookie = arch_phys_wc_add(info->fix.smem_start,
        info->fix.smem_len);
 return 0;

err_reg_framebuffer:
 fb_dealloc_cmap(&info->cmap);
err_alloc_cmap:
err_find_mode:
 if (par->ddc_registered)
  i2c_del_adapter(&par->ddc_adapter);
 pci_iounmap(dev, par->regs);
err_ioremap_2:
 pci_iounmap(dev, info->screen_base);
err_ioremap_1:
 pci_release_regions(dev);
err_request_regions:

err_enable_device:
 framebuffer_release(info);
 return ret;
}
