
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int (* disc_recv_req ) (struct fc_lport*,struct fc_frame*) ;} ;
struct fc_lport {int lp_mutex; TYPE_1__ tt; int point_to_multipoint; int link_up; } ;
struct fc_frame {int dummy; } ;
 int FC_FID_FLOGI ;
 int fc_frame_free (struct fc_frame*) ;
 int fc_frame_payload_op (struct fc_frame*) ;
 int fc_frame_sid (struct fc_frame*) ;
 int fc_lport_recv_echo_req (struct fc_lport*,struct fc_frame*) ;
 int fc_lport_recv_flogi_req (struct fc_lport*,struct fc_frame*) ;
 int fc_lport_recv_logo_req (struct fc_lport*,struct fc_frame*) ;
 int fc_lport_recv_rlir_req (struct fc_lport*,struct fc_frame*) ;
 int fc_lport_recv_rnid_req (struct fc_lport*,struct fc_frame*) ;
 int fc_rport_recv_req (struct fc_lport*,struct fc_frame*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int stub1 (struct fc_lport*,struct fc_frame*) ;

__attribute__((used)) static void fc_lport_recv_els_req(struct fc_lport *lport,
      struct fc_frame *fp)
{
 mutex_lock(&lport->lp_mutex);






 if (!lport->link_up)
  fc_frame_free(fp);
 else {



  switch (fc_frame_payload_op(fp)) {
  case 132:
   if (!lport->point_to_multipoint)
    fc_lport_recv_flogi_req(lport, fp);
   else
    fc_rport_recv_req(lport, fp);
   break;
  case 131:
   if (fc_frame_sid(fp) == FC_FID_FLOGI)
    fc_lport_recv_logo_req(lport, fp);
   else
    fc_rport_recv_req(lport, fp);
   break;
  case 128:
   lport->tt.disc_recv_req(lport, fp);
   break;
  case 133:
   fc_lport_recv_echo_req(lport, fp);
   break;
  case 130:
   fc_lport_recv_rlir_req(lport, fp);
   break;
  case 129:
   fc_lport_recv_rnid_req(lport, fp);
   break;
  default:
   fc_rport_recv_req(lport, fp);
   break;
  }
 }
 mutex_unlock(&lport->lp_mutex);
}
