
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct pci_dev {int dummy; } ;
struct TYPE_3__ {int line; } ;
struct lpss8250 {TYPE_2__* board; TYPE_1__ data; } ;
struct TYPE_4__ {int (* exit ) (struct lpss8250*) ;} ;


 struct lpss8250* pci_get_drvdata (struct pci_dev*) ;
 int serial8250_unregister_port (int ) ;
 int stub1 (struct lpss8250*) ;

__attribute__((used)) static void lpss8250_remove(struct pci_dev *pdev)
{
 struct lpss8250 *lpss = pci_get_drvdata(pdev);

 serial8250_unregister_port(lpss->data.line);

 if (lpss->board->exit)
  lpss->board->exit(lpss);
}
