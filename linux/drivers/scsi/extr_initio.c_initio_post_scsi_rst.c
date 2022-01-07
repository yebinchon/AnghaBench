
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct target_control {int flags; int sconfig0; scalar_t__ js_period; } ;
struct scsi_ctrl_blk {int hastat; } ;
struct initio_host {int max_tar; struct target_control* targets; scalar_t__* act_tags; int sconf1; scalar_t__ flags; int * active_tc; int * active; } ;


 int HOST_BAD_PHAS ;
 int TCF_BUSY ;
 int TCF_SYNC_DONE ;
 int TCF_WDTR_DONE ;
 int initio_append_done_scb (struct initio_host*,struct scsi_ctrl_blk*) ;
 struct scsi_ctrl_blk* initio_pop_busy_scb (struct initio_host*) ;

__attribute__((used)) static int initio_post_scsi_rst(struct initio_host * host)
{
 struct scsi_ctrl_blk *scb;
 struct target_control *active_tc;
 int i;

 host->active = ((void*)0);
 host->active_tc = ((void*)0);
 host->flags = 0;

 while ((scb = initio_pop_busy_scb(host)) != ((void*)0)) {
  scb->hastat = HOST_BAD_PHAS;
  initio_append_done_scb(host, scb);
 }

 active_tc = &host->targets[0];
 for (i = 0; i < host->max_tar; active_tc++, i++) {
  active_tc->flags &= ~(TCF_SYNC_DONE | TCF_WDTR_DONE);

  active_tc->js_period = 0;
  active_tc->sconfig0 = host->sconf1;
  host->act_tags[0] = 0;
  host->targets[i].flags &= ~TCF_BUSY;
 }

 return -1;
}
