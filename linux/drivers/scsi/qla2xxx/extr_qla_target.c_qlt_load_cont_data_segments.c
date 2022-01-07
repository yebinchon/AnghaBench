
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct qla_tgt_prm {scalar_t__ seg_cnt; int sg; TYPE_2__* cmd; } ;
struct dsd64 {int dummy; } ;
struct TYPE_7__ {int entry_count; struct dsd64* dsd; int entry_type; scalar_t__ sys_define; } ;
typedef TYPE_3__ cont_a64_entry_t ;
struct TYPE_6__ {TYPE_1__* qpair; } ;
struct TYPE_5__ {int req; } ;


 int CONTINUE_A64_TYPE ;
 int QLA_TGT_DATASEGS_PER_CONT_24XX ;
 int append_dsd64 (struct dsd64**,int ) ;
 int memset (TYPE_3__*,int ,int) ;
 scalar_t__ qlt_get_req_pkt (int ) ;
 int sg_next (int ) ;

__attribute__((used)) static void qlt_load_cont_data_segments(struct qla_tgt_prm *prm)
{
 int cnt;
 struct dsd64 *cur_dsd;


 while (prm->seg_cnt > 0) {
  cont_a64_entry_t *cont_pkt64 =
   (cont_a64_entry_t *)qlt_get_req_pkt(
      prm->cmd->qpair->req);
  memset(cont_pkt64, 0, sizeof(*cont_pkt64));

  cont_pkt64->entry_count = 1;
  cont_pkt64->sys_define = 0;

  cont_pkt64->entry_type = CONTINUE_A64_TYPE;
  cur_dsd = cont_pkt64->dsd;


  for (cnt = 0;
      cnt < QLA_TGT_DATASEGS_PER_CONT_24XX && prm->seg_cnt;
      cnt++, prm->seg_cnt--) {
   append_dsd64(&cur_dsd, prm->sg);
   prm->sg = sg_next(prm->sg);
  }
 }
}
