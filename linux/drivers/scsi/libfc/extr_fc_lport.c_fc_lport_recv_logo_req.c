
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fc_lport {int lp_mutex; } ;
struct fc_frame {int dummy; } ;


 int ELS_LS_ACC ;
 int fc_frame_free (struct fc_frame*) ;
 int fc_lport_enter_reset (struct fc_lport*) ;
 int fc_seq_els_rsp_send (struct fc_frame*,int ,int *) ;
 int lockdep_assert_held (int *) ;

__attribute__((used)) static void fc_lport_recv_logo_req(struct fc_lport *lport, struct fc_frame *fp)
{
 lockdep_assert_held(&lport->lp_mutex);

 fc_seq_els_rsp_send(fp, ELS_LS_ACC, ((void*)0));
 fc_lport_enter_reset(lport);
 fc_frame_free(fp);
}
