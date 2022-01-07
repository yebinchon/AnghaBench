
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct fc_seq {int dummy; } ;
struct TYPE_2__ {int (* frame_send ) (struct fc_lport*,struct fc_frame*) ;} ;
struct fc_lport {TYPE_1__ tt; } ;
struct fc_frame {int dummy; } ;
struct fc_els_ls_rjt {int er_reason; int er_explan; int er_cmd; } ;
typedef enum fc_els_rjt_reason { ____Placeholder_fc_els_rjt_reason } fc_els_rjt_reason ;
typedef enum fc_els_rjt_explan { ____Placeholder_fc_els_rjt_explan } fc_els_rjt_explan ;


 int ELS_LS_RJT ;
 int FC_EXCH_DBG (int ,char*) ;
 int FC_RCTL_ELS_REP ;
 int fc_fill_reply_hdr (struct fc_frame*,struct fc_frame*,int ,int ) ;
 struct fc_frame* fc_frame_alloc (struct fc_lport*,int) ;
 struct fc_els_ls_rjt* fc_frame_payload_get (struct fc_frame*,int) ;
 int fc_seq_exch (struct fc_seq*) ;
 struct fc_lport* fr_dev (struct fc_frame*) ;
 struct fc_seq* fr_seq (struct fc_frame*) ;
 int memset (struct fc_els_ls_rjt*,int ,int) ;
 int stub1 (struct fc_lport*,struct fc_frame*) ;

__attribute__((used)) static void fc_seq_ls_rjt(struct fc_frame *rx_fp, enum fc_els_rjt_reason reason,
     enum fc_els_rjt_explan explan)
{
 struct fc_lport *lport;
 struct fc_els_ls_rjt *rjt;
 struct fc_frame *fp;
 struct fc_seq *sp;

 lport = fr_dev(rx_fp);
 sp = fr_seq(rx_fp);
 fp = fc_frame_alloc(lport, sizeof(*rjt));
 if (!fp) {
  FC_EXCH_DBG(fc_seq_exch(sp),
       "exch: drop LS_ACC, out of memory\n");
  return;
 }
 rjt = fc_frame_payload_get(fp, sizeof(*rjt));
 memset(rjt, 0, sizeof(*rjt));
 rjt->er_cmd = ELS_LS_RJT;
 rjt->er_reason = reason;
 rjt->er_explan = explan;
 fc_fill_reply_hdr(fp, rx_fp, FC_RCTL_ELS_REP, 0);
 lport->tt.frame_send(lport, fp);
}
