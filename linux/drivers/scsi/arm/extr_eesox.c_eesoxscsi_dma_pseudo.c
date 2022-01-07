
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_pointer {int this_residual; int ptr; } ;
struct eesoxscsi_info {int base; } ;
struct Scsi_Host {scalar_t__ hostdata; } ;
typedef scalar_t__ fasdmadir_t ;


 scalar_t__ DMA_IN ;
 int eesoxscsi_buffer_in (int ,int ,int ) ;
 int eesoxscsi_buffer_out (int ,int ,int ) ;

__attribute__((used)) static void
eesoxscsi_dma_pseudo(struct Scsi_Host *host, struct scsi_pointer *SCp,
       fasdmadir_t dir, int transfer_size)
{
 struct eesoxscsi_info *info = (struct eesoxscsi_info *)host->hostdata;
 if (dir == DMA_IN) {
  eesoxscsi_buffer_in(SCp->ptr, SCp->this_residual, info->base);
 } else {
  eesoxscsi_buffer_out(SCp->ptr, SCp->this_residual, info->base);
 }
}
