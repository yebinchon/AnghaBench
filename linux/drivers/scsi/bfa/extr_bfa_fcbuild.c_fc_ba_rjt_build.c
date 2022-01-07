
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* u32 ;
typedef int u16 ;
struct fchs_s {int cat_info; } ;
struct fc_ba_rjt_s {void* reason_expl; void* reason_code; } ;
typedef int __be16 ;


 int FC_CAT_BA_RJT ;
 int fc_bls_rsp_build (struct fchs_s*,void*,void*,int ) ;

u16
fc_ba_rjt_build(struct fchs_s *fchs, u32 d_id, u32 s_id, __be16 ox_id,
  u32 reason_code, u32 reason_expl)
{
 struct fc_ba_rjt_s *ba_rjt = (struct fc_ba_rjt_s *) (fchs + 1);

 fc_bls_rsp_build(fchs, d_id, s_id, ox_id);

 fchs->cat_info = FC_CAT_BA_RJT;
 ba_rjt->reason_code = reason_code;
 ba_rjt->reason_expl = reason_expl;
 return sizeof(struct fc_ba_rjt_s);
}
