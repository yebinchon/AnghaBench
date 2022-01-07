
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pcifront_device {TYPE_1__* xdev; } ;
struct TYPE_2__ {int dev; } ;


 int dev_info (int *,char*) ;
 struct pcifront_device* pcifront_dev ;
 int pcifront_dev_lock ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static void pcifront_disconnect(struct pcifront_device *pdev)
{
 spin_lock(&pcifront_dev_lock);

 if (pdev == pcifront_dev) {
  dev_info(&pdev->xdev->dev,
    "Disconnecting PCI Frontend Buses\n");
  pcifront_dev = ((void*)0);
 }

 spin_unlock(&pcifront_dev_lock);
}
