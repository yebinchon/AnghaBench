
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nvmet_fc_tgtport {int dummy; } ;
struct nvmet_fc_ls_iod {int rspbuf; TYPE_1__* lsreq; int * assoc; int rspdma; scalar_t__ rqstbuf; } ;
struct fcnvme_ls_rqst_w0 {int ls_cmd; } ;
struct TYPE_2__ {scalar_t__ rsplen; int done; int rspdma; int rspbuf; struct nvmet_fc_ls_iod* nvmet_fc_private; } ;





 int FCNVME_RJT_EXP_NONE ;
 int FCNVME_RJT_RC_INVAL ;
 int NVME_FC_MAX_LS_BUFFER_SIZE ;
 scalar_t__ nvmet_fc_format_rjt (int ,int ,int,int ,int ,int ) ;
 int nvmet_fc_ls_create_association (struct nvmet_fc_tgtport*,struct nvmet_fc_ls_iod*) ;
 int nvmet_fc_ls_create_connection (struct nvmet_fc_tgtport*,struct nvmet_fc_ls_iod*) ;
 int nvmet_fc_ls_disconnect (struct nvmet_fc_tgtport*,struct nvmet_fc_ls_iod*) ;
 int nvmet_fc_xmt_ls_rsp (struct nvmet_fc_tgtport*,struct nvmet_fc_ls_iod*) ;
 int nvmet_fc_xmt_ls_rsp_done ;

__attribute__((used)) static void
nvmet_fc_handle_ls_rqst(struct nvmet_fc_tgtport *tgtport,
   struct nvmet_fc_ls_iod *iod)
{
 struct fcnvme_ls_rqst_w0 *w0 =
   (struct fcnvme_ls_rqst_w0 *)iod->rqstbuf;

 iod->lsreq->nvmet_fc_private = iod;
 iod->lsreq->rspbuf = iod->rspbuf;
 iod->lsreq->rspdma = iod->rspdma;
 iod->lsreq->done = nvmet_fc_xmt_ls_rsp_done;

 iod->lsreq->rsplen = 0;

 iod->assoc = ((void*)0);






 switch (w0->ls_cmd) {
 case 130:

  nvmet_fc_ls_create_association(tgtport, iod);
  break;
 case 129:

  nvmet_fc_ls_create_connection(tgtport, iod);
  break;
 case 128:

  nvmet_fc_ls_disconnect(tgtport, iod);
  break;
 default:
  iod->lsreq->rsplen = nvmet_fc_format_rjt(iod->rspbuf,
    NVME_FC_MAX_LS_BUFFER_SIZE, w0->ls_cmd,
    FCNVME_RJT_RC_INVAL, FCNVME_RJT_EXP_NONE, 0);
 }

 nvmet_fc_xmt_ls_rsp(tgtport, iod);
}
