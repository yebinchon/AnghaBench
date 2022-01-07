
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qedf_ctx {int flogi_compl; int flogi_failed; int dbg_ctx; } ;
struct fc_seq {int dummy; } ;
struct fc_lport {int dummy; } ;
struct fc_frame {int dummy; } ;
struct fc_exch {struct fc_lport* lp; } ;


 scalar_t__ ELS_LS_ACC ;
 scalar_t__ ELS_LS_RJT ;
 scalar_t__ IS_ERR (struct fc_frame*) ;
 int QEDF_ERR (int *,char*) ;
 int QEDF_INFO (int *,int ,char*) ;
 int QEDF_LOG_ELS ;
 int complete (int *) ;
 scalar_t__ fc_frame_payload_op (struct fc_frame*) ;
 int fc_lport_flogi_resp (struct fc_seq*,struct fc_frame*,struct fc_lport*) ;
 struct fc_exch* fc_seq_exch (struct fc_seq*) ;
 struct qedf_ctx* lport_priv (struct fc_lport*) ;
 int qedf_set_data_src_addr (struct qedf_ctx*,struct fc_frame*) ;

__attribute__((used)) static void qedf_flogi_resp(struct fc_seq *seq, struct fc_frame *fp,
 void *arg)
{
 struct fc_exch *exch = fc_seq_exch(seq);
 struct fc_lport *lport = exch->lp;
 struct qedf_ctx *qedf = lport_priv(lport);

 if (!qedf) {
  QEDF_ERR(((void*)0), "qedf is NULL.\n");
  return;
 }





 if (IS_ERR(fp)) {
  QEDF_INFO(&(qedf->dbg_ctx), QEDF_LOG_ELS,
      "fp has IS_ERR() set.\n");
  goto skip_stat;
 }


 if (fc_frame_payload_op(fp) == ELS_LS_RJT)
  qedf->flogi_failed++;
 else if (fc_frame_payload_op(fp) == ELS_LS_ACC) {

  qedf_set_data_src_addr(qedf, fp);
 }


 complete(&qedf->flogi_compl);

skip_stat:

 fc_lport_flogi_resp(seq, fp, lport);
}
