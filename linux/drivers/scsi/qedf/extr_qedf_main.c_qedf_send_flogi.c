
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct qedf_ctx {int flogi_compl; int dbg_ctx; struct fc_lport* lport; } ;
struct TYPE_2__ {int (* elsct_send ) (struct fc_lport*,int ,struct fc_frame*,int ,int ,struct fc_lport*,int ) ;} ;
struct fc_lport {int r_a_tov; TYPE_1__ tt; } ;
struct fc_frame {int dummy; } ;
struct fc_els_flogi {int dummy; } ;


 int EINVAL ;
 int ELS_FLOGI ;
 int ENOMEM ;
 int FC_FID_FLOGI ;
 int QEDF_ERR (int *,char*) ;
 int QEDF_INFO (int *,int ,char*) ;
 int QEDF_LOG_ELS ;
 struct fc_frame* fc_frame_alloc (struct fc_lport*,int) ;
 int init_completion (int *) ;
 int qedf_flogi_resp ;
 int stub1 (struct fc_lport*,int ,struct fc_frame*,int ,int ,struct fc_lport*,int ) ;

int qedf_send_flogi(struct qedf_ctx *qedf)
{
 struct fc_lport *lport;
 struct fc_frame *fp;

 lport = qedf->lport;

 if (!lport->tt.elsct_send) {
  QEDF_ERR(&qedf->dbg_ctx, "tt.elsct_send not set.\n");
  return -EINVAL;
 }

 fp = fc_frame_alloc(lport, sizeof(struct fc_els_flogi));
 if (!fp) {
  QEDF_ERR(&(qedf->dbg_ctx), "fc_frame_alloc failed.\n");
  return -ENOMEM;
 }

 QEDF_INFO(&(qedf->dbg_ctx), QEDF_LOG_ELS,
     "Sending FLOGI to reestablish session with switch.\n");
 lport->tt.elsct_send(lport, FC_FID_FLOGI, fp,
     ELS_FLOGI, qedf_flogi_resp, lport, lport->r_a_tov);

 init_completion(&qedf->flogi_compl);

 return 0;
}
