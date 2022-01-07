
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* u8 ;
typedef int u32 ;
typedef int u16 ;
struct fchs_s {int dummy; } ;
struct fcgs_rffid_req_s {void* fc4_type; void* fc4ftr_bits; int dap; } ;
struct ct_hdr_s {int dummy; } ;


 int FC_NAME_SERVER ;
 int GS_RFF_ID ;
 int bfa_hton3b (int ) ;
 int fc_gs_cthdr_build (struct ct_hdr_s*,int ,int ) ;
 int fc_gs_fchdr_build (struct fchs_s*,int ,int ,int) ;
 int memset (struct fcgs_rffid_req_s*,int ,int) ;

u16
fc_rffid_build(struct fchs_s *fchs, void *pyld, u32 s_id, u16 ox_id,
        u8 fc4_type, u8 fc4_ftrs)
{
 struct ct_hdr_s *cthdr = (struct ct_hdr_s *) pyld;
 struct fcgs_rffid_req_s *rffid = (struct fcgs_rffid_req_s *)(cthdr + 1);
 u32 d_id = bfa_hton3b(FC_NAME_SERVER);

 fc_gs_fchdr_build(fchs, d_id, s_id, ox_id);
 fc_gs_cthdr_build(cthdr, s_id, GS_RFF_ID);

 memset(rffid, 0, sizeof(struct fcgs_rffid_req_s));

 rffid->dap = s_id;
 rffid->fc4ftr_bits = fc4_ftrs;
 rffid->fc4_type = fc4_type;

 return sizeof(struct fcgs_rffid_req_s) + sizeof(struct ct_hdr_s);
}
