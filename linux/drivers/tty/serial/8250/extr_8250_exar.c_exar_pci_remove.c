
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pci_dev {int dummy; } ;
struct exar8250 {unsigned int nr; TYPE_1__* board; int * line; } ;
struct TYPE_2__ {int (* exit ) (struct pci_dev*) ;} ;


 struct exar8250* pci_get_drvdata (struct pci_dev*) ;
 int serial8250_unregister_port (int ) ;
 int stub1 (struct pci_dev*) ;

__attribute__((used)) static void exar_pci_remove(struct pci_dev *pcidev)
{
 struct exar8250 *priv = pci_get_drvdata(pcidev);
 unsigned int i;

 for (i = 0; i < priv->nr; i++)
  serial8250_unregister_port(priv->line[i]);

 if (priv->board->exit)
  priv->board->exit(pcidev);
}
