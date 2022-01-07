
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_12__ {int event; } ;
struct TYPE_8__ {TYPE_5__ power_state; } ;
struct TYPE_9__ {TYPE_1__ power; } ;
struct pci_dev {TYPE_2__ dev; } ;
struct TYPE_11__ {int i810_cursor_memory; int i810_fb_memory; } ;
struct i810fb_par {int cur_state; TYPE_4__ i810_gtt; } ;
struct fb_info {TYPE_3__* fbops; struct i810fb_par* par; } ;
typedef TYPE_5__ pm_message_t ;
struct TYPE_10__ {int (* fb_sync ) (struct fb_info*) ;} ;


 int FB_BLANK_POWERDOWN ;


 int agp_unbind_memory (int ) ;
 int console_lock () ;
 int console_unlock () ;
 int fb_set_suspend (struct fb_info*,int) ;
 int i810fb_blank (int ,struct fb_info*) ;
 int pci_choose_state (struct pci_dev*,TYPE_5__) ;
 int pci_disable_device (struct pci_dev*) ;
 struct fb_info* pci_get_drvdata (struct pci_dev*) ;
 int pci_save_state (struct pci_dev*) ;
 int pci_set_power_state (struct pci_dev*,int ) ;
 int stub1 (struct fb_info*) ;

__attribute__((used)) static int i810fb_suspend(struct pci_dev *dev, pm_message_t mesg)
{
 struct fb_info *info = pci_get_drvdata(dev);
 struct i810fb_par *par = info->par;

 par->cur_state = mesg.event;

 switch (mesg.event) {
 case 129:
 case 128:
  dev->dev.power.power_state = mesg;
  return 0;
 }

 console_lock();
 fb_set_suspend(info, 1);

 if (info->fbops->fb_sync)
  info->fbops->fb_sync(info);

 i810fb_blank(FB_BLANK_POWERDOWN, info);
 agp_unbind_memory(par->i810_gtt.i810_fb_memory);
 agp_unbind_memory(par->i810_gtt.i810_cursor_memory);

 pci_save_state(dev);
 pci_disable_device(dev);
 pci_set_power_state(dev, pci_choose_state(dev, mesg));
 console_unlock();

 return 0;
}
