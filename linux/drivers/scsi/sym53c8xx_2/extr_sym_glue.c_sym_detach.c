
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int timer; } ;
struct sym_hcb {TYPE_1__ s; } ;
struct pci_dev {int dummy; } ;
struct Scsi_Host {int dummy; } ;


 int INB (struct sym_hcb*,int ) ;
 int OUTB (struct sym_hcb*,int ,int ) ;
 int SRST ;
 int del_timer_sync (int *) ;
 int nc_istat ;
 int nc_mbox1 ;
 int printk (char*,int ) ;
 int scsi_host_put (struct Scsi_Host*) ;
 int sym_free_resources (struct sym_hcb*,struct pci_dev*,int) ;
 struct sym_hcb* sym_get_hcb (struct Scsi_Host*) ;
 int sym_name (struct sym_hcb*) ;
 int udelay (int) ;

__attribute__((used)) static int sym_detach(struct Scsi_Host *shost, struct pci_dev *pdev)
{
 struct sym_hcb *np = sym_get_hcb(shost);
 printk("%s: detaching ...\n", sym_name(np));

 del_timer_sync(&np->s.timer);






 printk("%s: resetting chip\n", sym_name(np));
 OUTB(np, nc_istat, SRST);
 INB(np, nc_mbox1);
 udelay(10);
 OUTB(np, nc_istat, 0);

 sym_free_resources(np, pdev, 1);
 scsi_host_put(shost);

 return 1;
}
