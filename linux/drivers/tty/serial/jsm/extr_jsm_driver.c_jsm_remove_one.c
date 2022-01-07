
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int device; } ;
struct jsm_board {int maxports; struct jsm_board** channels; struct jsm_board* ch_equeue; struct jsm_board* ch_rqueue; int re_map_membase; int irq; int iobase; } ;






 int free_irq (int ,struct jsm_board*) ;
 int iounmap (int ) ;
 int jsm_remove_uart_port (struct jsm_board*) ;
 int kfree (struct jsm_board*) ;
 int outb (int,int ) ;
 int pci_disable_device (struct pci_dev*) ;
 struct jsm_board* pci_get_drvdata (struct pci_dev*) ;
 int pci_release_regions (struct pci_dev*) ;

__attribute__((used)) static void jsm_remove_one(struct pci_dev *pdev)
{
 struct jsm_board *brd = pci_get_drvdata(pdev);
 int i = 0;

 switch (pdev->device) {
 case 131:
 case 130:
 case 129:
 case 128:

  outb(0x0, brd->iobase + 0x4c);
  break;
 default:
  break;
 }

 jsm_remove_uart_port(brd);

 free_irq(brd->irq, brd);
 iounmap(brd->re_map_membase);


 for (i = 0; i < brd->maxports; i++) {
  if (brd->channels[i]) {
   kfree(brd->channels[i]->ch_rqueue);
   kfree(brd->channels[i]->ch_equeue);
   kfree(brd->channels[i]);
  }
 }

 pci_release_regions(pdev);
 pci_disable_device(pdev);
 kfree(brd);
}
