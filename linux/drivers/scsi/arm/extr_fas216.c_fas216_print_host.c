
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct seq_file {int dummy; } ;
struct TYPE_4__ {int dma; int irq; int io_base; int type; } ;
struct TYPE_5__ {TYPE_1__ scsi; } ;
typedef TYPE_2__ FAS216_Info ;


 int seq_printf (struct seq_file*,char*,int ,int ,int ,int ) ;

void fas216_print_host(FAS216_Info *info, struct seq_file *m)
{
 seq_printf(m,
   "\n"
   "Chip    : %s\n"
   " Address: 0x%p\n"
   " IRQ    : %d\n"
   " DMA    : %d\n",
   info->scsi.type, info->scsi.io_base,
   info->scsi.irq, info->scsi.dma);
}
