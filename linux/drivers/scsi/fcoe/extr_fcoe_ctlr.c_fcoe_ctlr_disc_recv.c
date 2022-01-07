
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fc_seq_els_data {int explan; int reason; } ;
struct fc_lport {int dummy; } ;
struct fc_frame {int dummy; } ;


 int ELS_EXPL_NONE ;
 int ELS_LS_RJT ;
 int ELS_RJT_UNSUP ;
 int fc_frame_free (struct fc_frame*) ;
 int fc_seq_els_rsp_send (struct fc_frame*,int ,struct fc_seq_els_data*) ;

__attribute__((used)) static void fcoe_ctlr_disc_recv(struct fc_lport *lport, struct fc_frame *fp)
{
 struct fc_seq_els_data rjt_data;

 rjt_data.reason = ELS_RJT_UNSUP;
 rjt_data.explan = ELS_EXPL_NONE;
 fc_seq_els_rsp_send(fp, ELS_LS_RJT, &rjt_data);
 fc_frame_free(fp);
}
