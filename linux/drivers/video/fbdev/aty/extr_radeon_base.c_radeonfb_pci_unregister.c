
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct radeonfb_info {scalar_t__ mon1_modedb; scalar_t__ mon2_EDID; scalar_t__ mon1_EDID; int fb_base; int mmio_base; int wc_cookie; int lvds_timer; int init_state; TYPE_2__* pdev; } ;
struct pci_dev {int dummy; } ;
struct fb_info {int cmap; struct radeonfb_info* par; } ;
struct TYPE_3__ {int kobj; } ;
struct TYPE_4__ {TYPE_1__ dev; } ;


 int arch_phys_wc_del (int ) ;
 int del_timer_sync (int *) ;
 int edid1_attr ;
 int edid2_attr ;
 int fb_dealloc_cmap (int *) ;
 int fb_destroy_modedb (scalar_t__) ;
 int framebuffer_release (struct fb_info*) ;
 int iounmap (int ) ;
 int kfree (scalar_t__) ;
 struct fb_info* pci_get_drvdata (struct pci_dev*) ;
 int pci_release_region (struct pci_dev*,int) ;
 int radeon_delete_i2c_busses (struct radeonfb_info*) ;
 int radeon_write_mode (struct radeonfb_info*,int *,int) ;
 int radeonfb_bl_exit (struct radeonfb_info*) ;
 int radeonfb_pm_exit (struct radeonfb_info*) ;
 int sysfs_remove_bin_file (int *,int *) ;
 int unregister_framebuffer (struct fb_info*) ;

__attribute__((used)) static void radeonfb_pci_unregister(struct pci_dev *pdev)
{
        struct fb_info *info = pci_get_drvdata(pdev);
        struct radeonfb_info *rinfo = info->par;

        if (!rinfo)
                return;

 radeonfb_pm_exit(rinfo);

 if (rinfo->mon1_EDID)
  sysfs_remove_bin_file(&rinfo->pdev->dev.kobj, &edid1_attr);
 if (rinfo->mon2_EDID)
  sysfs_remove_bin_file(&rinfo->pdev->dev.kobj, &edid2_attr);
 del_timer_sync(&rinfo->lvds_timer);
 arch_phys_wc_del(rinfo->wc_cookie);
        unregister_framebuffer(info);

        radeonfb_bl_exit(rinfo);

        iounmap(rinfo->mmio_base);
        iounmap(rinfo->fb_base);

 pci_release_region(pdev, 2);
 pci_release_region(pdev, 0);

 kfree(rinfo->mon1_EDID);
 kfree(rinfo->mon2_EDID);
 if (rinfo->mon1_modedb)
  fb_destroy_modedb(rinfo->mon1_modedb);



 fb_dealloc_cmap(&info->cmap);
        framebuffer_release(info);
}
