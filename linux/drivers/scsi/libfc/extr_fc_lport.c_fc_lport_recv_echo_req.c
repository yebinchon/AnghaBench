
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int (* frame_send ) (struct fc_lport*,struct fc_frame*) ;} ;
struct fc_lport {TYPE_1__ tt; int lp_mutex; } ;
struct fc_frame_header {int dummy; } ;
struct fc_frame {int dummy; } ;
typedef int __be32 ;


 int ELS_LS_ACC ;
 int FC_LPORT_DBG (struct fc_lport*,char*,int ) ;
 int FC_RCTL_ELS_REP ;
 int fc_fill_reply_hdr (struct fc_frame*,struct fc_frame*,int ,int ) ;
 struct fc_frame* fc_frame_alloc (struct fc_lport*,unsigned int) ;
 int fc_frame_free (struct fc_frame*) ;
 void* fc_frame_payload_get (struct fc_frame*,unsigned int) ;
 int fc_lport_state (struct fc_lport*) ;
 int fr_len (struct fc_frame*) ;
 int htonl (int) ;
 int lockdep_assert_held (int *) ;
 int memcpy (void*,void*,unsigned int) ;
 int stub1 (struct fc_lport*,struct fc_frame*) ;

__attribute__((used)) static void fc_lport_recv_echo_req(struct fc_lport *lport,
       struct fc_frame *in_fp)
{
 struct fc_frame *fp;
 unsigned int len;
 void *pp;
 void *dp;

 lockdep_assert_held(&lport->lp_mutex);

 FC_LPORT_DBG(lport, "Received ECHO request while in state %s\n",
       fc_lport_state(lport));

 len = fr_len(in_fp) - sizeof(struct fc_frame_header);
 pp = fc_frame_payload_get(in_fp, len);

 if (len < sizeof(__be32))
  len = sizeof(__be32);

 fp = fc_frame_alloc(lport, len);
 if (fp) {
  dp = fc_frame_payload_get(fp, len);
  memcpy(dp, pp, len);
  *((__be32 *)dp) = htonl(ELS_LS_ACC << 24);
  fc_fill_reply_hdr(fp, in_fp, FC_RCTL_ELS_REP, 0);
  lport->tt.frame_send(lport, fp);
 }
 fc_frame_free(in_fp);
}
