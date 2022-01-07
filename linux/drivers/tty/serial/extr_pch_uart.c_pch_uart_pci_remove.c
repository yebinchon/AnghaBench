
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pci_dev {int dummy; } ;
struct TYPE_2__ {size_t line; } ;
struct eg20t_port {TYPE_1__ port; } ;


 int kfree (struct eg20t_port*) ;
 int pch_uart_exit_port (struct eg20t_port*) ;
 int ** pch_uart_ports ;
 int pci_disable_device (struct pci_dev*) ;
 int pci_disable_msi (struct pci_dev*) ;
 struct eg20t_port* pci_get_drvdata (struct pci_dev*) ;

__attribute__((used)) static void pch_uart_pci_remove(struct pci_dev *pdev)
{
 struct eg20t_port *priv = pci_get_drvdata(pdev);

 pci_disable_msi(pdev);




 pch_uart_exit_port(priv);
 pci_disable_device(pdev);
 kfree(priv);
 return;
}
