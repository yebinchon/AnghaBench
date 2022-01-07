
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dummy; } ;
struct mvs_info {int * regs_ex; void* regs; struct pci_dev* pdev; } ;


 unsigned long IORESOURCE_MEM ;
 void* ioremap (unsigned long,unsigned long) ;
 int iounmap (int *) ;
 unsigned long pci_resource_flags (struct pci_dev*,int) ;
 unsigned long pci_resource_len (struct pci_dev*,int) ;
 unsigned long pci_resource_start (struct pci_dev*,int) ;

int mvs_ioremap(struct mvs_info *mvi, int bar, int bar_ex)
{
 unsigned long res_start, res_len, res_flag, res_flag_ex = 0;
 struct pci_dev *pdev = mvi->pdev;
 if (bar_ex != -1) {



  res_start = pci_resource_start(pdev, bar_ex);
  res_len = pci_resource_len(pdev, bar_ex);
  if (!res_start || !res_len)
   goto err_out;

  res_flag_ex = pci_resource_flags(pdev, bar_ex);
  if (res_flag_ex & IORESOURCE_MEM)
   mvi->regs_ex = ioremap(res_start, res_len);
  else
   mvi->regs_ex = (void *)res_start;
  if (!mvi->regs_ex)
   goto err_out;
 }

 res_start = pci_resource_start(pdev, bar);
 res_len = pci_resource_len(pdev, bar);
 if (!res_start || !res_len) {
  iounmap(mvi->regs_ex);
  mvi->regs_ex = ((void*)0);
  goto err_out;
 }

 res_flag = pci_resource_flags(pdev, bar);
 mvi->regs = ioremap(res_start, res_len);

 if (!mvi->regs) {
  if (mvi->regs_ex && (res_flag_ex & IORESOURCE_MEM))
   iounmap(mvi->regs_ex);
  mvi->regs_ex = ((void*)0);
  goto err_out;
 }

 return 0;
err_out:
 return -1;
}
