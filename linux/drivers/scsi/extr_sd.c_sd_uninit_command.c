
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct scsi_cmnd {scalar_t__ cmd_len; int * cmnd; struct request* request; } ;
struct TYPE_3__ {int * bv_page; } ;
struct request {int rq_flags; TYPE_1__ special_vec; } ;
struct TYPE_4__ {int * cmd; } ;


 int RQF_SPECIAL_PAYLOAD ;
 int mempool_free (int *,int ) ;
 TYPE_2__* scsi_req (struct request*) ;
 int sd_cdb_pool ;
 int sd_page_pool ;

__attribute__((used)) static void sd_uninit_command(struct scsi_cmnd *SCpnt)
{
 struct request *rq = SCpnt->request;
 u8 *cmnd;

 if (rq->rq_flags & RQF_SPECIAL_PAYLOAD)
  mempool_free(rq->special_vec.bv_page, sd_page_pool);

 if (SCpnt->cmnd != scsi_req(rq)->cmd) {
  cmnd = SCpnt->cmnd;
  SCpnt->cmnd = ((void*)0);
  SCpnt->cmd_len = 0;
  mempool_free(cmnd, sd_cdb_pool);
 }
}
