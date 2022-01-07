
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int devt; } ;
struct switchtec_dev {TYPE_1__ dev; int cdev; } ;
struct pci_dev {int dummy; } ;


 int MINOR (int ) ;
 int cdev_device_del (int *,TYPE_1__*) ;
 int dev_info (TYPE_1__*,char*) ;
 int ida_simple_remove (int *,int ) ;
 struct switchtec_dev* pci_get_drvdata (struct pci_dev*) ;
 int pci_set_drvdata (struct pci_dev*,int *) ;
 int put_device (TYPE_1__*) ;
 int stdev_kill (struct switchtec_dev*) ;
 int switchtec_minor_ida ;

__attribute__((used)) static void switchtec_pci_remove(struct pci_dev *pdev)
{
 struct switchtec_dev *stdev = pci_get_drvdata(pdev);

 pci_set_drvdata(pdev, ((void*)0));

 cdev_device_del(&stdev->cdev, &stdev->dev);
 ida_simple_remove(&switchtec_minor_ida, MINOR(stdev->dev.devt));
 dev_info(&stdev->dev, "unregistered.\n");
 stdev_kill(stdev);
 put_device(&stdev->dev);
}
