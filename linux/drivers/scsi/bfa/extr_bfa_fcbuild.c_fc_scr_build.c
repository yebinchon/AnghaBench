
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
typedef int u32 ;
typedef int u16 ;
struct fchs_s {int dummy; } ;
struct fc_scr_s {int vu_reg_func; int reg_func; int command; } ;


 int FC_ELS_SCR ;
 int FC_FABRIC_CONTROLLER ;
 int FC_SCR_REG_FUNC_FULL ;
 int FC_VU_SCR_REG_FUNC_FABRIC_NAME_CHANGE ;
 int bfa_hton3b (int ) ;
 int fc_els_req_build (struct fchs_s*,int ,int ,int) ;
 int memset (struct fc_scr_s*,int ,int) ;

u16
fc_scr_build(struct fchs_s *fchs, struct fc_scr_s *scr,
  u8 set_br_reg, u32 s_id, u16 ox_id)
{
 u32 d_id = bfa_hton3b(FC_FABRIC_CONTROLLER);

 fc_els_req_build(fchs, d_id, s_id, ox_id);

 memset(scr, 0, sizeof(struct fc_scr_s));
 scr->command = FC_ELS_SCR;
 scr->reg_func = FC_SCR_REG_FUNC_FULL;
 if (set_br_reg)
  scr->vu_reg_func = FC_VU_SCR_REG_FUNC_FABRIC_NAME_CHANGE;

 return sizeof(struct fc_scr_s);
}
