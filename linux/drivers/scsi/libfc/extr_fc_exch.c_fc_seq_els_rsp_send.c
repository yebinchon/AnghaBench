
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fc_seq_els_data {int explan; int reason; } ;
struct fc_frame {int dummy; } ;
typedef enum fc_els_cmd { ____Placeholder_fc_els_cmd } fc_els_cmd ;






 int FC_LPORT_DBG (int ,char*,int) ;
 int fc_exch_els_rec (struct fc_frame*) ;
 int fc_exch_els_rrq (struct fc_frame*) ;
 int fc_seq_ls_acc (struct fc_frame*) ;
 int fc_seq_ls_rjt (struct fc_frame*,int ,int ) ;
 int fr_dev (struct fc_frame*) ;

void fc_seq_els_rsp_send(struct fc_frame *fp, enum fc_els_cmd els_cmd,
    struct fc_seq_els_data *els_data)
{
 switch (els_cmd) {
 case 130:
  fc_seq_ls_rjt(fp, els_data->reason, els_data->explan);
  break;
 case 131:
  fc_seq_ls_acc(fp);
  break;
 case 128:
  fc_exch_els_rrq(fp);
  break;
 case 129:
  fc_exch_els_rec(fp);
  break;
 default:
  FC_LPORT_DBG(fr_dev(fp), "Invalid ELS CMD:%x\n", els_cmd);
 }
}
