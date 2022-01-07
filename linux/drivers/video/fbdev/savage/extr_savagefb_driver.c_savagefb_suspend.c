
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct savagefb_par {scalar_t__ pm_state; int save; } ;
struct TYPE_10__ {scalar_t__ event; } ;
struct TYPE_7__ {TYPE_4__ power_state; } ;
struct TYPE_8__ {TYPE_1__ power; } ;
struct pci_dev {TYPE_2__ dev; } ;
struct fb_info {TYPE_3__* fbops; struct savagefb_par* par; } ;
typedef TYPE_4__ pm_message_t ;
struct TYPE_9__ {int (* fb_sync ) (struct fb_info*) ;} ;


 int DBG (char*) ;
 int FB_BLANK_POWERDOWN ;
 scalar_t__ PM_EVENT_FREEZE ;
 scalar_t__ PM_EVENT_PRETHAW ;
 int console_lock () ;
 int console_unlock () ;
 int fb_set_suspend (struct fb_info*,int) ;
 int pci_choose_state (struct pci_dev*,TYPE_4__) ;
 int pci_disable_device (struct pci_dev*) ;
 struct fb_info* pci_get_drvdata (struct pci_dev*) ;
 int pci_save_state (struct pci_dev*) ;
 int pci_set_power_state (struct pci_dev*,int ) ;
 int savage_disable_mmio (struct savagefb_par*) ;
 int savage_set_default_par (struct savagefb_par*,int *) ;
 int savagefb_blank (int ,struct fb_info*) ;
 int stub1 (struct fb_info*) ;

__attribute__((used)) static int savagefb_suspend(struct pci_dev *dev, pm_message_t mesg)
{
 struct fb_info *info = pci_get_drvdata(dev);
 struct savagefb_par *par = info->par;

 DBG("savagefb_suspend");

 if (mesg.event == PM_EVENT_PRETHAW)
  mesg.event = PM_EVENT_FREEZE;
 par->pm_state = mesg.event;
 dev->dev.power.power_state = mesg;





 if (mesg.event == PM_EVENT_FREEZE)
  return 0;

 console_lock();
 fb_set_suspend(info, 1);

 if (info->fbops->fb_sync)
  info->fbops->fb_sync(info);

 savagefb_blank(FB_BLANK_POWERDOWN, info);
 savage_set_default_par(par, &par->save);
 savage_disable_mmio(par);
 pci_save_state(dev);
 pci_disable_device(dev);
 pci_set_power_state(dev, pci_choose_state(dev, mesg));
 console_unlock();

 return 0;
}
