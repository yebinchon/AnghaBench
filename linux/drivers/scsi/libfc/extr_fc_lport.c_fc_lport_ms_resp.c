
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fc_seq {int dummy; } ;
struct fc_lport {int state; int lp_mutex; } ;
struct fc_frame_header {scalar_t__ fh_type; } ;
struct fc_frame {int dummy; } ;
struct fc_ct_hdr {scalar_t__ ct_fs_type; scalar_t__ ct_fs_subtype; int ct_cmd; int ct_explan; int ct_reason; } ;


 struct fc_frame* ERR_PTR (int ) ;
 int FC_EX_CLOSED ;
 scalar_t__ FC_FDMI_SUBTYPE ;
 scalar_t__ FC_FST_MGMT ;
 int FC_FS_ACC ;
 int FC_LPORT_DBG (struct fc_lport*,char*,int ,...) ;
 scalar_t__ FC_TYPE_CT ;
 scalar_t__ IS_ERR (struct fc_frame*) ;




 int fc_els_resp_type (struct fc_frame*) ;
 int fc_frame_free (struct fc_frame*) ;
 struct fc_frame_header* fc_frame_header_get (struct fc_frame*) ;
 struct fc_ct_hdr* fc_frame_payload_get (struct fc_frame*,int) ;
 int fc_lport_enter_ms (struct fc_lport*,int const) ;
 int fc_lport_enter_scr (struct fc_lport*) ;
 int fc_lport_error (struct fc_lport*,struct fc_frame*) ;
 int fc_lport_state (struct fc_lport*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int ntohs (int ) ;

__attribute__((used)) static void fc_lport_ms_resp(struct fc_seq *sp, struct fc_frame *fp,
        void *lp_arg)
{
 struct fc_lport *lport = lp_arg;
 struct fc_frame_header *fh;
 struct fc_ct_hdr *ct;

 FC_LPORT_DBG(lport, "Received a ms %s\n", fc_els_resp_type(fp));

 if (fp == ERR_PTR(-FC_EX_CLOSED))
  return;

 mutex_lock(&lport->lp_mutex);

 if (lport->state < 129 || lport->state > 130) {
  FC_LPORT_DBG(lport, "Received a management server response, "
        "but in state %s\n", fc_lport_state(lport));
  if (IS_ERR(fp))
   goto err;
  goto out;
 }

 if (IS_ERR(fp)) {
  fc_lport_error(lport, fp);
  goto err;
 }

 fh = fc_frame_header_get(fp);
 ct = fc_frame_payload_get(fp, sizeof(*ct));

 if (fh && ct && fh->fh_type == FC_TYPE_CT &&
     ct->ct_fs_type == FC_FST_MGMT &&
     ct->ct_fs_subtype == FC_FDMI_SUBTYPE) {
  FC_LPORT_DBG(lport, "Received a management server response, "
        "reason=%d explain=%d\n",
        ct->ct_reason,
        ct->ct_explan);

  switch (lport->state) {
  case 129:
   if (ntohs(ct->ct_cmd) == FC_FS_ACC)
    fc_lport_enter_ms(lport, 128);
   else
    fc_lport_enter_scr(lport);
   break;
  case 128:
   fc_lport_enter_scr(lport);
   break;
  case 130:
   fc_lport_enter_ms(lport, 129);
   break;
  case 131:
   fc_lport_enter_ms(lport, 130);
   break;
  default:

   break;
  }
 } else {

  fc_lport_error(lport, fp);
 }
out:
 fc_frame_free(fp);
err:
 mutex_unlock(&lport->lp_mutex);
}
