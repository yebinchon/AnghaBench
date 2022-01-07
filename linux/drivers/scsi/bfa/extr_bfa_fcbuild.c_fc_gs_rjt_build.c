
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* u8 ;
typedef int u32 ;
typedef int u16 ;
struct fchs_s {int dummy; } ;
struct ct_hdr_s {void* exp_code; void* reason_code; int rev_id; int cmd_rsp_code; } ;


 int CT_GS3_REVISION ;
 int CT_RSP_REJECT ;
 int cpu_to_be16 (int ) ;
 int fc_gsresp_fchdr_build (struct fchs_s*,int ,int ,int) ;

u16
fc_gs_rjt_build(struct fchs_s *fchs, struct ct_hdr_s *cthdr,
  u32 d_id, u32 s_id, u16 ox_id, u8 reason_code,
  u8 reason_code_expl)
{
 fc_gsresp_fchdr_build(fchs, d_id, s_id, ox_id);

 cthdr->cmd_rsp_code = cpu_to_be16(CT_RSP_REJECT);
 cthdr->rev_id = CT_GS3_REVISION;

 cthdr->reason_code = reason_code;
 cthdr->exp_code = reason_code_expl;
 return sizeof(struct ct_hdr_s);
}
