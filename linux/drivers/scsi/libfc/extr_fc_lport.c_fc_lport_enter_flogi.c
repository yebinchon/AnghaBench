
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int (* elsct_send ) (struct fc_lport*,int ,struct fc_frame*,int ,int ,struct fc_lport*,int) ;} ;
struct fc_lport {int r_a_tov; int e_d_tov; scalar_t__ vport; TYPE_1__ tt; scalar_t__ port_id; scalar_t__ point_to_multipoint; int lp_mutex; } ;
struct fc_frame {int dummy; } ;
struct fc_els_flogi {int dummy; } ;


 int ELS_FDISC ;
 int ELS_FLOGI ;
 int FC_FID_FLOGI ;
 int FC_LPORT_DBG (struct fc_lport*,char*,int ) ;
 int LPORT_ST_FLOGI ;
 struct fc_frame* fc_frame_alloc (struct fc_lport*,int) ;
 int fc_lport_enter_ready (struct fc_lport*) ;
 void fc_lport_error (struct fc_lport*,struct fc_frame*) ;
 int fc_lport_flogi_resp ;
 int fc_lport_state (struct fc_lport*) ;
 int fc_lport_state_enter (struct fc_lport*,int ) ;
 int lockdep_assert_held (int *) ;
 int stub1 (struct fc_lport*,int ,struct fc_frame*,int ,int ,struct fc_lport*,int) ;

__attribute__((used)) static void fc_lport_enter_flogi(struct fc_lport *lport)
{
 struct fc_frame *fp;

 lockdep_assert_held(&lport->lp_mutex);

 FC_LPORT_DBG(lport, "Entered FLOGI state from %s state\n",
       fc_lport_state(lport));

 fc_lport_state_enter(lport, LPORT_ST_FLOGI);

 if (lport->point_to_multipoint) {
  if (lport->port_id)
   fc_lport_enter_ready(lport);
  return;
 }

 fp = fc_frame_alloc(lport, sizeof(struct fc_els_flogi));
 if (!fp)
  return fc_lport_error(lport, fp);

 if (!lport->tt.elsct_send(lport, FC_FID_FLOGI, fp,
      lport->vport ? ELS_FDISC : ELS_FLOGI,
      fc_lport_flogi_resp, lport,
      lport->vport ? 2 * lport->r_a_tov :
      lport->e_d_tov))
  fc_lport_error(lport, ((void*)0));
}
