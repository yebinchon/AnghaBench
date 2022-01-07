
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
typedef int u16 ;
struct fchs_s {int dummy; } ;
struct fc_prlo_acc_s {int page_len; int payload_len; TYPE_1__* prlo_acc_params; int command; } ;
typedef int __be16 ;
struct TYPE_2__ {scalar_t__ resp_process_assc; scalar_t__ orig_process_assc; int fc4type_csp; scalar_t__ rpa_valid; scalar_t__ opa_valid; } ;


 int FC_ELS_ACC ;
 int FC_TYPE_FCP ;
 int be16_to_cpu (int ) ;
 int cpu_to_be16 (int) ;
 int fc_els_rsp_build (struct fchs_s*,int ,int ,int ) ;
 int memset (struct fc_prlo_acc_s*,int ,int) ;

u16
fc_prlo_acc_build(struct fchs_s *fchs, struct fc_prlo_acc_s *prlo_acc, u32 d_id,
    u32 s_id, __be16 ox_id, int num_pages)
{
 int page;

 fc_els_rsp_build(fchs, d_id, s_id, ox_id);

 memset(prlo_acc, 0, (num_pages * 16) + 4);
 prlo_acc->command = FC_ELS_ACC;
 prlo_acc->page_len = 0x10;
 prlo_acc->payload_len = cpu_to_be16((num_pages * 16) + 4);

 for (page = 0; page < num_pages; page++) {
  prlo_acc->prlo_acc_params[page].opa_valid = 0;
  prlo_acc->prlo_acc_params[page].rpa_valid = 0;
  prlo_acc->prlo_acc_params[page].fc4type_csp = FC_TYPE_FCP;
  prlo_acc->prlo_acc_params[page].orig_process_assc = 0;
  prlo_acc->prlo_acc_params[page].resp_process_assc = 0;
 }

 return be16_to_cpu(prlo_acc->payload_len);
}
