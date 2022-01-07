
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pci_dev {int dummy; } ;
struct isi_board {unsigned int port_count; int index; scalar_t__ base; int irq; TYPE_1__* ports; } ;
struct TYPE_2__ {int port; } ;


 int card_count ;
 int free_irq (int ,struct isi_board*) ;
 int isicom_normal ;
 int pci_disable_device (struct pci_dev*) ;
 struct isi_board* pci_get_drvdata (struct pci_dev*) ;
 int pci_release_region (struct pci_dev*,int) ;
 int tty_port_destroy (int *) ;
 int tty_unregister_device (int ,int) ;

__attribute__((used)) static void isicom_remove(struct pci_dev *pdev)
{
 struct isi_board *board = pci_get_drvdata(pdev);
 unsigned int i;

 for (i = 0; i < board->port_count; i++) {
  tty_unregister_device(isicom_normal, board->index * 16 + i);
  tty_port_destroy(&board->ports[i].port);
 }

 free_irq(board->irq, board);
 pci_release_region(pdev, 3);
 board->base = 0;
 card_count--;
 pci_disable_device(pdev);
}
