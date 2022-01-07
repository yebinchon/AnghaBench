
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct s3fb_info {scalar_t__ ref_count; int open_lock; } ;
struct pci_dev {int dummy; } ;
struct fb_info {int device; struct s3fb_info* par; } ;
struct TYPE_4__ {scalar_t__ event; } ;
typedef TYPE_1__ pm_message_t ;


 scalar_t__ PM_EVENT_FREEZE ;
 int console_lock () ;
 int console_unlock () ;
 int dev_info (int ,char*) ;
 int fb_set_suspend (struct fb_info*,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int pci_choose_state (struct pci_dev*,TYPE_1__) ;
 int pci_disable_device (struct pci_dev*) ;
 struct fb_info* pci_get_drvdata (struct pci_dev*) ;
 int pci_save_state (struct pci_dev*) ;
 int pci_set_power_state (struct pci_dev*,int ) ;

__attribute__((used)) static int s3_pci_suspend(struct pci_dev* dev, pm_message_t state)
{
 struct fb_info *info = pci_get_drvdata(dev);
 struct s3fb_info *par = info->par;

 dev_info(info->device, "suspend\n");

 console_lock();
 mutex_lock(&(par->open_lock));

 if ((state.event == PM_EVENT_FREEZE) || (par->ref_count == 0)) {
  mutex_unlock(&(par->open_lock));
  console_unlock();
  return 0;
 }

 fb_set_suspend(info, 1);

 pci_save_state(dev);
 pci_disable_device(dev);
 pci_set_power_state(dev, pci_choose_state(dev, state));

 mutex_unlock(&(par->open_lock));
 console_unlock();

 return 0;
}
