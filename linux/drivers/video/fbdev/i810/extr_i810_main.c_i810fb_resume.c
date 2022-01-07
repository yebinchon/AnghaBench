
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct pci_dev {int dummy; } ;
struct TYPE_7__ {int offset; } ;
struct TYPE_6__ {int i810_cursor_memory; int i810_fb_memory; } ;
struct TYPE_5__ {int offset; } ;
struct i810fb_par {int cur_state; TYPE_3__ cursor_heap; TYPE_2__ i810_gtt; TYPE_1__ fb; } ;
struct fb_info {TYPE_4__* fbops; struct i810fb_par* par; } ;
struct TYPE_8__ {int (* fb_blank ) (int ,struct fb_info*) ;} ;


 int PCI_D0 ;
 int PM_EVENT_FREEZE ;
 int PM_EVENT_ON ;
 int VESA_NO_BLANKING ;
 int agp_bind_memory (int ,int ) ;
 int console_lock () ;
 int console_unlock () ;
 int fb_set_suspend (struct fb_info*,int ) ;
 int i810fb_set_par (struct fb_info*) ;
 scalar_t__ pci_enable_device (struct pci_dev*) ;
 struct fb_info* pci_get_drvdata (struct pci_dev*) ;
 int pci_restore_state (struct pci_dev*) ;
 int pci_set_master (struct pci_dev*) ;
 int pci_set_power_state (struct pci_dev*,int ) ;
 int stub1 (int ,struct fb_info*) ;

__attribute__((used)) static int i810fb_resume(struct pci_dev *dev)
{
 struct fb_info *info = pci_get_drvdata(dev);
 struct i810fb_par *par = info->par;
 int cur_state = par->cur_state;

 par->cur_state = PM_EVENT_ON;

 if (cur_state == PM_EVENT_FREEZE) {
  pci_set_power_state(dev, PCI_D0);
  return 0;
 }

 console_lock();
 pci_set_power_state(dev, PCI_D0);
 pci_restore_state(dev);

 if (pci_enable_device(dev))
  goto fail;

 pci_set_master(dev);
 agp_bind_memory(par->i810_gtt.i810_fb_memory,
   par->fb.offset);
 agp_bind_memory(par->i810_gtt.i810_cursor_memory,
   par->cursor_heap.offset);
 i810fb_set_par(info);
 fb_set_suspend (info, 0);
 info->fbops->fb_blank(VESA_NO_BLANKING, info);
fail:
 console_unlock();
 return 0;
}
