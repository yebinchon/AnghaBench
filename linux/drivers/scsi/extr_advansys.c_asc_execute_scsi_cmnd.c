
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct scsi_cmnd {void* result; TYPE_2__* device; } ;
struct asc_scsi_q {int sg_head; } ;
struct TYPE_10__ {int err_code; } ;
struct TYPE_9__ {int err_code; } ;
struct TYPE_7__ {TYPE_4__ adv_dvc_var; TYPE_3__ asc_dvc_var; } ;
struct asc_board {int * reqcnt; TYPE_1__ dvc_var; } ;
typedef int adv_req_t ;
struct TYPE_8__ {size_t id; int host; } ;
typedef TYPE_3__ ASC_DVC_VAR ;
typedef TYPE_4__ ADV_DVC_VAR ;



 int ASC_DBG (int,char*,...) ;

 scalar_t__ ASC_NARROW_BOARD (struct asc_board*) ;

 int ASC_STATS (int ,int ) ;
 int AdvExeScsiQueue (TYPE_4__*,int *) ;
 int AscExeScsiQueue (TYPE_3__*,struct asc_scsi_q*) ;
 int DID_ERROR ;
 void* HOST_BYTE (int ) ;
 int KERN_ERR ;
 int adv_build_req (struct asc_board*,struct scsi_cmnd*,int **) ;
 int asc_build_req (struct asc_board*,struct scsi_cmnd*,struct asc_scsi_q*) ;
 int build_error ;
 int exe_busy ;
 int exe_error ;
 int exe_noerror ;
 int exe_unknown ;
 int kfree (int ) ;
 int scmd_printk (int ,struct scsi_cmnd*,char*,int) ;
 struct asc_board* shost_priv (int ) ;

__attribute__((used)) static int asc_execute_scsi_cmnd(struct scsi_cmnd *scp)
{
 int ret, err_code;
 struct asc_board *boardp = shost_priv(scp->device->host);

 ASC_DBG(1, "scp 0x%p\n", scp);

 if (ASC_NARROW_BOARD(boardp)) {
  ASC_DVC_VAR *asc_dvc = &boardp->dvc_var.asc_dvc_var;
  struct asc_scsi_q asc_scsi_q;

  ret = asc_build_req(boardp, scp, &asc_scsi_q);
  if (ret != 128) {
   ASC_STATS(scp->device->host, build_error);
   return ret;
  }

  ret = AscExeScsiQueue(asc_dvc, &asc_scsi_q);
  kfree(asc_scsi_q.sg_head);
  err_code = asc_dvc->err_code;
 } else {
  ADV_DVC_VAR *adv_dvc = &boardp->dvc_var.adv_dvc_var;
  adv_req_t *adv_reqp;

  switch (adv_build_req(boardp, scp, &adv_reqp)) {
  case 128:
   ASC_DBG(3, "adv_build_req ASC_NOERROR\n");
   break;
  case 130:
   ASC_DBG(1, "adv_build_req ASC_BUSY\n");






   return 130;
  case 129:
  default:
   ASC_DBG(1, "adv_build_req ASC_ERROR\n");
   ASC_STATS(scp->device->host, build_error);
   return 129;
  }

  ret = AdvExeScsiQueue(adv_dvc, adv_reqp);
  err_code = adv_dvc->err_code;
 }

 switch (ret) {
 case 128:
  ASC_STATS(scp->device->host, exe_noerror);




  boardp->reqcnt[scp->device->id]++;
  ASC_DBG(1, "ExeScsiQueue() ASC_NOERROR\n");
  break;
 case 130:
  ASC_DBG(1, "ExeScsiQueue() ASC_BUSY\n");
  ASC_STATS(scp->device->host, exe_busy);
  break;
 case 129:
  scmd_printk(KERN_ERR, scp, "ExeScsiQueue() ASC_ERROR, "
   "err_code 0x%x\n", err_code);
  ASC_STATS(scp->device->host, exe_error);
  scp->result = HOST_BYTE(DID_ERROR);
  break;
 default:
  scmd_printk(KERN_ERR, scp, "ExeScsiQueue() unknown, "
   "err_code 0x%x\n", err_code);
  ASC_STATS(scp->device->host, exe_unknown);
  scp->result = HOST_BYTE(DID_ERROR);
  break;
 }

 ASC_DBG(1, "end\n");
 return ret;
}
