
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fc_seq_els_data {int explan; int reason; } ;
struct fc_lport {int lp_mutex; } ;
struct fc_frame {int dummy; } ;



 int ELS_EXPL_NONE ;


 int ELS_LS_RJT ;




 int ELS_RJT_UNSUP ;



 int fc_frame_free (struct fc_frame*) ;
 int fc_frame_payload_op (struct fc_frame*) ;
 int fc_rport_recv_els_req (struct fc_lport*,struct fc_frame*) ;
 int fc_rport_recv_flogi_req (struct fc_lport*,struct fc_frame*) ;
 int fc_rport_recv_logo_req (struct fc_lport*,struct fc_frame*) ;
 int fc_rport_recv_plogi_req (struct fc_lport*,struct fc_frame*) ;
 int fc_seq_els_rsp_send (struct fc_frame*,int ,struct fc_seq_els_data*) ;
 int lockdep_assert_held (int *) ;

void fc_rport_recv_req(struct fc_lport *lport, struct fc_frame *fp)
{
 struct fc_seq_els_data els_data;

 lockdep_assert_held(&lport->lp_mutex);







 switch (fc_frame_payload_op(fp)) {
 case 136:
  fc_rport_recv_flogi_req(lport, fp);
  break;
 case 134:
  fc_rport_recv_plogi_req(lport, fp);
  break;
 case 135:
  fc_rport_recv_logo_req(lport, fp);
  break;
 case 133:
 case 132:
 case 137:
 case 129:
 case 131:
 case 130:
 case 128:
  fc_rport_recv_els_req(lport, fp);
  break;
 default:
  els_data.reason = ELS_RJT_UNSUP;
  els_data.explan = ELS_EXPL_NONE;
  fc_seq_els_rsp_send(fp, ELS_LS_RJT, &els_data);
  fc_frame_free(fp);
  break;
 }
}
