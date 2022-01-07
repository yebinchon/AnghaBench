
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct qedf_rport {struct qedf_ctx* qedf; } ;
struct qedf_els_cb_arg {int l2_oxid; } ;
struct qedf_ctx {int dbg_ctx; struct fc_lport* lport; } ;
struct fc_lport {int r_a_tov; } ;
struct fc_frame_header {int fh_ox_id; } ;
struct fc_frame {int dummy; } ;
struct fc_els_adisc {int dummy; } ;


 int ELS_ADISC ;
 int ENOMEM ;
 int GFP_NOIO ;
 int QEDF_ERR (int *,char*) ;
 int QEDF_INFO (int *,int ,char*,int ) ;
 int QEDF_LOG_ELS ;
 struct fc_frame_header* fc_frame_header_get (struct fc_frame*) ;
 struct fc_els_adisc* fc_frame_payload_get (struct fc_frame*,int) ;
 int kfree (struct qedf_els_cb_arg*) ;
 struct qedf_els_cb_arg* kzalloc (int,int ) ;
 int ntohs (int ) ;
 int qedf_initiate_els (struct qedf_rport*,int ,struct fc_els_adisc*,int,int ,struct qedf_els_cb_arg*,int ) ;
 int qedf_l2_els_compl ;

int qedf_send_adisc(struct qedf_rport *fcport, struct fc_frame *fp)
{
 struct fc_els_adisc *adisc;
 struct fc_frame_header *fh;
 struct fc_lport *lport = fcport->qedf->lport;
 struct qedf_els_cb_arg *cb_arg = ((void*)0);
 struct qedf_ctx *qedf;
 uint32_t r_a_tov = lport->r_a_tov;
 int rc;

 qedf = fcport->qedf;
 fh = fc_frame_header_get(fp);

 cb_arg = kzalloc(sizeof(struct qedf_els_cb_arg), GFP_NOIO);
 if (!cb_arg) {
  QEDF_ERR(&(qedf->dbg_ctx), "Unable to allocate cb_arg for "
     "ADISC\n");
  rc = -ENOMEM;
  goto adisc_err;
 }
 cb_arg->l2_oxid = ntohs(fh->fh_ox_id);

 QEDF_INFO(&(qedf->dbg_ctx), QEDF_LOG_ELS,
     "Sending ADISC ox_id=0x%x.\n", cb_arg->l2_oxid);

 adisc = fc_frame_payload_get(fp, sizeof(*adisc));

 rc = qedf_initiate_els(fcport, ELS_ADISC, adisc, sizeof(*adisc),
     qedf_l2_els_compl, cb_arg, r_a_tov);

adisc_err:
 if (rc) {
  QEDF_ERR(&(qedf->dbg_ctx), "ADISC failed.\n");
  kfree(cb_arg);
 }
 return rc;
}
