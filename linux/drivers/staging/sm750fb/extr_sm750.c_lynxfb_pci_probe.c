
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ vram; } ;
struct TYPE_3__ {int de_imageblit; int de_copyarea; int de_fillrect; int de_init; } ;
struct sm750_dev {int vidmem_size; int pvMem; int vidmem_start; TYPE_2__ mtrr; int mtrr_off; TYPE_1__ accel; int accel_off; int slock; struct pci_dev* pdev; int revid; int devid; int ** fbinfo; } ;
struct pci_device_id {int dummy; } ;
struct pci_dev {int revision; int device; int dev; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ arch_phys_wc_add (int ,int ) ;
 struct sm750_dev* devm_kzalloc (int *,int,int ) ;
 scalar_t__ g_dualview ;
 int g_noaccel ;
 int g_nomtrr ;
 int g_settings ;
 int hw_sm750_inithw (struct sm750_dev*,struct pci_dev*) ;
 int hw_sm750_map (struct sm750_dev*,struct pci_dev*) ;
 int lynxfb_kick_out_firmware_fb (struct pci_dev*) ;
 int memset_io (int ,int ,int ) ;
 int pci_set_drvdata (struct pci_dev*,struct sm750_dev*) ;
 int pcim_enable_device (struct pci_dev*) ;
 int sm750_hw_copyarea ;
 int sm750_hw_de_init ;
 int sm750_hw_fillrect ;
 int sm750_hw_imageblit ;
 int sm750fb_framebuffer_alloc (struct sm750_dev*,int) ;
 int sm750fb_framebuffer_release (struct sm750_dev*) ;
 int sm750fb_setup (struct sm750_dev*,int ) ;
 int spin_lock_init (int *) ;

__attribute__((used)) static int lynxfb_pci_probe(struct pci_dev *pdev,
       const struct pci_device_id *ent)
{
 struct sm750_dev *sm750_dev = ((void*)0);
 int max_fb;
 int fbidx;
 int err;

 err = lynxfb_kick_out_firmware_fb(pdev);
 if (err)
  return err;


 err = pcim_enable_device(pdev);
 if (err)
  return err;

 err = -ENOMEM;
 sm750_dev = devm_kzalloc(&pdev->dev, sizeof(*sm750_dev), GFP_KERNEL);
 if (!sm750_dev)
  return err;

 sm750_dev->fbinfo[0] = sm750_dev->fbinfo[1] = ((void*)0);
 sm750_dev->devid = pdev->device;
 sm750_dev->revid = pdev->revision;
 sm750_dev->pdev = pdev;
 sm750_dev->mtrr_off = g_nomtrr;
 sm750_dev->mtrr.vram = 0;
 sm750_dev->accel_off = g_noaccel;
 spin_lock_init(&sm750_dev->slock);

 if (!sm750_dev->accel_off) {






  sm750_dev->accel.de_init = sm750_hw_de_init;
  sm750_dev->accel.de_fillrect = sm750_hw_fillrect;
  sm750_dev->accel.de_copyarea = sm750_hw_copyarea;
  sm750_dev->accel.de_imageblit = sm750_hw_imageblit;
 }


 sm750fb_setup(sm750_dev, g_settings);


 err = hw_sm750_map(sm750_dev, pdev);
 if (err)
  return err;

 if (!sm750_dev->mtrr_off)
  sm750_dev->mtrr.vram = arch_phys_wc_add(sm750_dev->vidmem_start,
       sm750_dev->vidmem_size);

 memset_io(sm750_dev->pvMem, 0, sm750_dev->vidmem_size);

 pci_set_drvdata(pdev, sm750_dev);


 hw_sm750_inithw(sm750_dev, pdev);


 max_fb = g_dualview ? 2 : 1;
 for (fbidx = 0; fbidx < max_fb; fbidx++) {
  err = sm750fb_framebuffer_alloc(sm750_dev, fbidx);
  if (err)
   goto release_fb;
 }

 return 0;

release_fb:
 sm750fb_framebuffer_release(sm750_dev);
 return err;
}
