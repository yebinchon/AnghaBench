
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct scsi_ctrl_blk {int hastat; } ;
struct initio_host {int max_tar; TYPE_1__* targets; } ;
struct TYPE_2__ {int flags; } ;


 int HOST_BAD_PHAS ;
 int TCF_SYNC_DONE ;
 int TCF_WDTR_DONE ;
 int initio_append_done_scb (struct initio_host*,struct scsi_ctrl_blk*) ;
 struct scsi_ctrl_blk* initio_pop_busy_scb (struct initio_host*) ;
 int initio_reset_scsi (struct initio_host*,int) ;

__attribute__((used)) static int int_initio_bad_seq(struct initio_host * host)
{
 struct scsi_ctrl_blk *scb;
 int i;

 initio_reset_scsi(host, 10);

 while ((scb = initio_pop_busy_scb(host)) != ((void*)0)) {
  scb->hastat = HOST_BAD_PHAS;
  initio_append_done_scb(host, scb);
 }
 for (i = 0; i < host->max_tar; i++)
  host->targets[i].flags &= ~(TCF_SYNC_DONE | TCF_WDTR_DONE);
 return -1;
}
