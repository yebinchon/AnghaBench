
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct fchs_s {int dummy; } ;
struct ct_hdr_s {int dummy; } ;


 int FC_MGMT_SERVER ;
 int bfa_hton3b (int ) ;
 int fc_gs_fchdr_build (struct fchs_s*,int ,int ,int ) ;
 int fc_gs_fdmi_cthdr_build (struct ct_hdr_s*,int ,int) ;

u16
fc_fdmi_reqhdr_build(struct fchs_s *fchs, void *pyld, u32 s_id,
       u16 cmd_code)
{

 struct ct_hdr_s *cthdr = (struct ct_hdr_s *) pyld;
 u32 d_id = bfa_hton3b(FC_MGMT_SERVER);

 fc_gs_fchdr_build(fchs, d_id, s_id, 0);
 fc_gs_fdmi_cthdr_build(cthdr, s_id, cmd_code);

 return sizeof(struct ct_hdr_s);
}
