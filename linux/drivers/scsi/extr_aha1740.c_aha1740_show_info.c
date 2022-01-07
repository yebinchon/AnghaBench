
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct seq_file {int dummy; } ;
struct aha1740_hostdata {scalar_t__ translation; TYPE_1__* edev; } ;
struct Scsi_Host {int irq; int io_port; } ;
struct TYPE_2__ {int slot; } ;


 struct aha1740_hostdata* HOSTDATA (struct Scsi_Host*) ;
 int seq_printf (struct seq_file*,char*,int ,int ,int ,char*) ;

__attribute__((used)) static int aha1740_show_info(struct seq_file *m, struct Scsi_Host *shpnt)
{
 struct aha1740_hostdata *host = HOSTDATA(shpnt);
 seq_printf(m, "aha174x at IO:%lx, IRQ %d, SLOT %d.\n"
        "Extended translation %sabled.\n",
        shpnt->io_port, shpnt->irq, host->edev->slot,
        host->translation ? "en" : "dis");
 return 0;
}
