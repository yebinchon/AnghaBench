
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
typedef int u16 ;
struct fchs_s {int dummy; } ;
struct fcgs_rftid_req_s {int dap; scalar_t__ fc4_type; } ;
struct ct_hdr_s {int dummy; } ;


 int FC_NAME_SERVER ;
 int GS_RFT_ID ;
 int bfa_hton3b (int ) ;
 int fc_gs_cthdr_build (struct ct_hdr_s*,int,int ) ;
 int fc_gs_fchdr_build (struct fchs_s*,int,int,int) ;
 int memcpy (void*,void*,int) ;
 int memset (struct fcgs_rftid_req_s*,int ,int) ;

u16
fc_rftid_build_sol(struct fchs_s *fchs, void *pyld, u32 s_id, u16 ox_id,
     u8 *fc4_bitmap, u32 bitmap_size)
{
 struct ct_hdr_s *cthdr = (struct ct_hdr_s *) pyld;
 struct fcgs_rftid_req_s *rftid = (struct fcgs_rftid_req_s *)(cthdr + 1);
 u32 d_id = bfa_hton3b(FC_NAME_SERVER);

 fc_gs_fchdr_build(fchs, d_id, s_id, ox_id);
 fc_gs_cthdr_build(cthdr, s_id, GS_RFT_ID);

 memset(rftid, 0, sizeof(struct fcgs_rftid_req_s));

 rftid->dap = s_id;
 memcpy((void *)rftid->fc4_type, (void *)fc4_bitmap,
  (bitmap_size < 32 ? bitmap_size : 32));

 return sizeof(struct fcgs_rftid_req_s) + sizeof(struct ct_hdr_s);
}
