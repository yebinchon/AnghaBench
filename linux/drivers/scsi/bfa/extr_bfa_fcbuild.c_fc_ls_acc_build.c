
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct fchs_s {int dummy; } ;
struct fc_els_cmd_s {int els_code; } ;
typedef int __be16 ;


 int FC_ELS_ACC ;
 int fc_els_rsp_build (struct fchs_s*,int ,int ,int ) ;
 int memset (struct fc_els_cmd_s*,int ,int) ;

u16
fc_ls_acc_build(struct fchs_s *fchs, struct fc_els_cmd_s *els_cmd, u32 d_id,
  u32 s_id, __be16 ox_id)
{
 fc_els_rsp_build(fchs, d_id, s_id, ox_id);
 memset(els_cmd, 0, sizeof(struct fc_els_cmd_s));
 els_cmd->els_code = FC_ELS_ACC;

 return sizeof(struct fc_els_cmd_s);
}
