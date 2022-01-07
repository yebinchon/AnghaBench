
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
typedef int u16 ;
struct pci_dev {int irq; } ;
struct nozomi {int index_start; int base_addr; struct nozomi* send_buf; TYPE_1__* port; int reg_fcr; int reg_ier; scalar_t__ last_ier; } ;
struct ctrl_ul {int port; int DTR; scalar_t__ RTS; scalar_t__ reserved; } ;
struct TYPE_2__ {int fifo_ul; int * ul_addr; } ;


 scalar_t__ CTRL_UL ;
 int DBG1 (char*,int ) ;
 int MAX_PORT ;
 size_t PORT_CTRL ;
 int free_irq (int ,struct nozomi*) ;
 int iounmap (int ) ;
 int kfifo_free (int *) ;
 int kfree (struct nozomi*) ;
 int ** ndevs ;
 int pci_disable_device (struct pci_dev*) ;
 struct nozomi* pci_get_drvdata (struct pci_dev*) ;
 int pci_release_regions (struct pci_dev*) ;
 int remove_sysfs_files (struct nozomi*) ;
 int tty_exit (struct nozomi*) ;
 int write_mem32 (int ,int *,int) ;
 int writew (scalar_t__,int ) ;

__attribute__((used)) static void nozomi_card_exit(struct pci_dev *pdev)
{
 int i;
 struct ctrl_ul ctrl;
 struct nozomi *dc = pci_get_drvdata(pdev);


 dc->last_ier = 0;
 writew(dc->last_ier, dc->reg_ier);

 tty_exit(dc);



 ctrl.port = 0x00;
 ctrl.reserved = 0;
 ctrl.RTS = 0;
 ctrl.DTR = 1;
 DBG1("sending flow control 0x%04X", *((u16 *)&ctrl));


 write_mem32(dc->port[PORT_CTRL].ul_addr[0], (u32 *)&ctrl, 2);
 writew(CTRL_UL, dc->reg_fcr);

 remove_sysfs_files(dc);

 free_irq(pdev->irq, dc);

 for (i = 0; i < MAX_PORT; i++)
  kfifo_free(&dc->port[i].fifo_ul);

 kfree(dc->send_buf);

 iounmap(dc->base_addr);

 pci_release_regions(pdev);

 pci_disable_device(pdev);

 ndevs[dc->index_start / MAX_PORT] = ((void*)0);

 kfree(dc);
}
