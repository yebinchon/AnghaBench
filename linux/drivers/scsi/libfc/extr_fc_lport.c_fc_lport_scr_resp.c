
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct fc_seq {int dummy; } ;
struct fc_lport {scalar_t__ state; int lp_mutex; } ;
struct fc_frame {int dummy; } ;


 scalar_t__ ELS_LS_ACC ;
 struct fc_frame* ERR_PTR (int ) ;
 int FC_EX_CLOSED ;
 int FC_LPORT_DBG (struct fc_lport*,char*,int ) ;
 scalar_t__ IS_ERR (struct fc_frame*) ;
 scalar_t__ LPORT_ST_SCR ;
 int fc_els_resp_type (struct fc_frame*) ;
 int fc_frame_free (struct fc_frame*) ;
 scalar_t__ fc_frame_payload_op (struct fc_frame*) ;
 int fc_lport_enter_ready (struct fc_lport*) ;
 int fc_lport_error (struct fc_lport*,struct fc_frame*) ;
 int fc_lport_state (struct fc_lport*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static void fc_lport_scr_resp(struct fc_seq *sp, struct fc_frame *fp,
         void *lp_arg)
{
 struct fc_lport *lport = lp_arg;
 u8 op;

 FC_LPORT_DBG(lport, "Received a SCR %s\n", fc_els_resp_type(fp));

 if (fp == ERR_PTR(-FC_EX_CLOSED))
  return;

 mutex_lock(&lport->lp_mutex);

 if (lport->state != LPORT_ST_SCR) {
  FC_LPORT_DBG(lport, "Received a SCR response, but in state "
        "%s\n", fc_lport_state(lport));
  if (IS_ERR(fp))
   goto err;
  goto out;
 }

 if (IS_ERR(fp)) {
  fc_lport_error(lport, fp);
  goto err;
 }

 op = fc_frame_payload_op(fp);
 if (op == ELS_LS_ACC)
  fc_lport_enter_ready(lport);
 else
  fc_lport_error(lport, fp);

out:
 fc_frame_free(fp);
err:
 mutex_unlock(&lport->lp_mutex);
}
