
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct fc_seq {int dummy; } ;
struct TYPE_2__ {int (* frame_send ) (struct fc_lport*,struct fc_frame*) ;} ;
struct fc_lport {TYPE_1__ tt; } ;
struct fc_frame {int dummy; } ;
struct fc_els_ls_acc {int la_cmd; } ;


 int ELS_LS_ACC ;
 int FC_EXCH_DBG (int ,char*) ;
 int FC_RCTL_ELS_REP ;
 int fc_fill_reply_hdr (struct fc_frame*,struct fc_frame*,int ,int ) ;
 struct fc_frame* fc_frame_alloc (struct fc_lport*,int) ;
 struct fc_els_ls_acc* fc_frame_payload_get (struct fc_frame*,int) ;
 int fc_seq_exch (struct fc_seq*) ;
 struct fc_lport* fr_dev (struct fc_frame*) ;
 struct fc_seq* fr_seq (struct fc_frame*) ;
 int memset (struct fc_els_ls_acc*,int ,int) ;
 int stub1 (struct fc_lport*,struct fc_frame*) ;

__attribute__((used)) static void fc_seq_ls_acc(struct fc_frame *rx_fp)
{
 struct fc_lport *lport;
 struct fc_els_ls_acc *acc;
 struct fc_frame *fp;
 struct fc_seq *sp;

 lport = fr_dev(rx_fp);
 sp = fr_seq(rx_fp);
 fp = fc_frame_alloc(lport, sizeof(*acc));
 if (!fp) {
  FC_EXCH_DBG(fc_seq_exch(sp),
       "exch: drop LS_ACC, out of memory\n");
  return;
 }
 acc = fc_frame_payload_get(fp, sizeof(*acc));
 memset(acc, 0, sizeof(*acc));
 acc->la_cmd = ELS_LS_ACC;
 fc_fill_reply_hdr(fp, rx_fp, FC_RCTL_ELS_REP, 0);
 lport->tt.frame_send(lport, fp);
}
