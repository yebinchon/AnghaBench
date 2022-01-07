
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
typedef int u16 ;
struct esas2r_target {scalar_t__ target_state; int flags; int inter_block; int block_size; int inter_byte; } ;
struct TYPE_7__ {int sgl_max_cnt; struct atto_physical_region_description* curr; int * chain; scalar_t__ sge_cnt; } ;
struct TYPE_6__ {scalar_t__ curr; } ;
struct TYPE_8__ {TYPE_2__ prd; TYPE_1__ a64; } ;
struct esas2r_sg_context {int length; TYPE_3__ sge; struct esas2r_request* first_req; } ;
struct esas2r_request {int target_id; int vda_req_sz; TYPE_5__* vrq; int flags; } ;
struct esas2r_adapter {struct esas2r_target* targetdb; } ;
struct atto_physical_region_description {int dummy; } ;
struct TYPE_9__ {int* cdb; scalar_t__ function; scalar_t__ iblk_cnt_prd; } ;
struct TYPE_10__ {TYPE_4__ scsi; } ;


 int MAKEDWORD (int ,int ) ;
 int MAKEWORD (int,int) ;




 int RF_1ST_IBLK_BASE ;
 int TF_PASS_THRU ;
 scalar_t__ TS_PRESENT ;
 scalar_t__ VDA_FUNC_SCSI ;




 int esas2r_build_prd_iblk (struct esas2r_adapter*,struct esas2r_sg_context*) ;
 int sgl_page_size ;
 scalar_t__ unlikely (int) ;

bool esas2r_build_sg_list_prd(struct esas2r_adapter *a,
         struct esas2r_sg_context *sgc)
{
 struct esas2r_request *rq = sgc->first_req;
 u32 len = sgc->length;
 struct esas2r_target *t = a->targetdb + rq->target_id;
 u8 is_i_o = 0;
 u16 reqsize;
 struct atto_physical_region_description *curr_iblk_chn;
 u8 *cdb = (u8 *)&rq->vrq->scsi.cdb[0];






 if (rq->vrq->scsi.function == VDA_FUNC_SCSI
     && t->target_state == TS_PRESENT
     && !(t->flags & TF_PASS_THRU)) {
  u32 lbalo = 0;

  switch (rq->vrq->scsi.cdb[0]) {
  case 133:
  case 129:
  {
   lbalo =
    MAKEDWORD(MAKEWORD(cdb[9],
         cdb[8]),
       MAKEWORD(cdb[7],
         cdb[6]));
   is_i_o = 1;
   break;
  }

  case 134:
  case 130:
  case 135:
  case 131:
  {
   lbalo =
    MAKEDWORD(MAKEWORD(cdb[5],
         cdb[4]),
       MAKEWORD(cdb[3],
         cdb[2]));
   is_i_o = 1;
   break;
  }

  case 132:
  case 128:
  {
   lbalo =
    MAKEDWORD(MAKEWORD(cdb[3],
         cdb[2]),
       MAKEWORD(cdb[1] & 0x1F,
         0));
   is_i_o = 1;
   break;
  }

  default:
   break;
  }

  if (is_i_o) {
   u32 startlba;

   rq->vrq->scsi.iblk_cnt_prd = 0;


   startlba = t->inter_block - (lbalo & (t->inter_block -
             1));
   sgc->length = startlba * t->block_size;


   if ((lbalo & (t->inter_block - 1)) == 0)
    rq->flags |= RF_1ST_IBLK_BASE;

   if (sgc->length > len)
    sgc->length = len;
  } else {
   sgc->length = len;
  }
 } else {
  sgc->length = len;
 }



 curr_iblk_chn =
  (struct atto_physical_region_description *)sgc->sge.a64.curr;

 sgc->sge.prd.sgl_max_cnt = sgl_page_size /
       sizeof(struct
       atto_physical_region_description);



 while (len) {
  sgc->sge.prd.sge_cnt = 0;
  sgc->sge.prd.chain = ((void*)0);
  sgc->sge.prd.curr = curr_iblk_chn;



  len -= sgc->length;



  if (unlikely(!esas2r_build_prd_iblk(a, sgc)))
   return 0;

  curr_iblk_chn++;

  if (is_i_o) {
   rq->vrq->scsi.iblk_cnt_prd++;

   if (len > t->inter_byte)
    sgc->length = t->inter_byte;
   else
    sgc->length = len;
  }
 }



 reqsize = ((u16)((u8 *)curr_iblk_chn - (u8 *)rq->vrq))
    / sizeof(u32);







 if (reqsize > rq->vda_req_sz)
  rq->vda_req_sz = reqsize;

 return 1;
}
