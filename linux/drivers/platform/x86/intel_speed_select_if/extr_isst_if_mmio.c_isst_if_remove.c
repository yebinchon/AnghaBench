
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dummy; } ;
struct isst_if_device {int mutex; } ;


 int ISST_IF_DEV_MBOX ;
 int isst_if_cdev_unregister (int ) ;
 int mutex_destroy (int *) ;
 struct isst_if_device* pci_get_drvdata (struct pci_dev*) ;

__attribute__((used)) static void isst_if_remove(struct pci_dev *pdev)
{
 struct isst_if_device *punit_dev;

 punit_dev = pci_get_drvdata(pdev);
 isst_if_cdev_unregister(ISST_IF_DEV_MBOX);
 mutex_destroy(&punit_dev->mutex);
}
