
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pci_dev {int dummy; } ;
struct mid8250 {TYPE_1__* board; int line; } ;
struct TYPE_2__ {int (* exit ) (struct mid8250*) ;} ;


 struct mid8250* pci_get_drvdata (struct pci_dev*) ;
 int serial8250_unregister_port (int ) ;
 int stub1 (struct mid8250*) ;

__attribute__((used)) static void mid8250_remove(struct pci_dev *pdev)
{
 struct mid8250 *mid = pci_get_drvdata(pdev);

 serial8250_unregister_port(mid->line);

 if (mid->board->exit)
  mid->board->exit(mid);
}
