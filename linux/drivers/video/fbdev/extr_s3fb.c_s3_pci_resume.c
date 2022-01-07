
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct s3fb_info {scalar_t__ ref_count; int open_lock; } ;
struct pci_dev {int dummy; } ;
struct fb_info {int device; struct s3fb_info* par; } ;


 int PCI_D0 ;
 int console_lock () ;
 int console_unlock () ;
 int dev_err (int ,char*,int) ;
 int dev_info (int ,char*) ;
 int fb_set_suspend (struct fb_info*,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int pci_enable_device (struct pci_dev*) ;
 struct fb_info* pci_get_drvdata (struct pci_dev*) ;
 int pci_restore_state (struct pci_dev*) ;
 int pci_set_master (struct pci_dev*) ;
 int pci_set_power_state (struct pci_dev*,int ) ;
 int s3fb_set_par (struct fb_info*) ;

__attribute__((used)) static int s3_pci_resume(struct pci_dev* dev)
{
 struct fb_info *info = pci_get_drvdata(dev);
 struct s3fb_info *par = info->par;
 int err;

 dev_info(info->device, "resume\n");

 console_lock();
 mutex_lock(&(par->open_lock));

 if (par->ref_count == 0) {
  mutex_unlock(&(par->open_lock));
  console_unlock();
  return 0;
 }

 pci_set_power_state(dev, PCI_D0);
 pci_restore_state(dev);
 err = pci_enable_device(dev);
 if (err) {
  mutex_unlock(&(par->open_lock));
  console_unlock();
  dev_err(info->device, "error %d enabling device for resume\n", err);
  return err;
 }
 pci_set_master(dev);

 s3fb_set_par(info);
 fb_set_suspend(info, 0);

 mutex_unlock(&(par->open_lock));
 console_unlock();

 return 0;
}
