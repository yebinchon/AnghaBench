
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tsi721_device {int dummy; } ;
struct pci_dev {int dev; } ;


 int EXIT ;
 int pci_clear_master (struct pci_dev*) ;
 int pci_disable_device (struct pci_dev*) ;
 struct tsi721_device* pci_get_drvdata (struct pci_dev*) ;
 int tsi721_disable_ints (struct tsi721_device*) ;
 int tsi721_dma_stop_all (struct tsi721_device*) ;
 int tsi_debug (int ,int *,char*) ;

__attribute__((used)) static void tsi721_shutdown(struct pci_dev *pdev)
{
 struct tsi721_device *priv = pci_get_drvdata(pdev);

 tsi_debug(EXIT, &pdev->dev, "enter");

 tsi721_disable_ints(priv);
 tsi721_dma_stop_all(priv);
 pci_clear_master(pdev);
 pci_disable_device(pdev);
}
