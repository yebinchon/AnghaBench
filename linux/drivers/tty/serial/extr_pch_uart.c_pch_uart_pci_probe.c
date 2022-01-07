
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_device_id {int dummy; } ;
struct pci_dev {int dummy; } ;
struct eg20t_port {int dummy; } ;


 int EBUSY ;
 struct eg20t_port* pch_uart_init_port (struct pci_dev*,struct pci_device_id const*) ;
 int pci_disable_device (struct pci_dev*) ;
 int pci_disable_msi (struct pci_dev*) ;
 int pci_enable_device (struct pci_dev*) ;
 int pci_set_drvdata (struct pci_dev*,struct eg20t_port*) ;

__attribute__((used)) static int pch_uart_pci_probe(struct pci_dev *pdev,
     const struct pci_device_id *id)
{
 int ret;
 struct eg20t_port *priv;

 ret = pci_enable_device(pdev);
 if (ret < 0)
  goto probe_error;

 priv = pch_uart_init_port(pdev, id);
 if (!priv) {
  ret = -EBUSY;
  goto probe_disable_device;
 }
 pci_set_drvdata(pdev, priv);

 return ret;

probe_disable_device:
 pci_disable_msi(pdev);
 pci_disable_device(pdev);
probe_error:
 return ret;
}
