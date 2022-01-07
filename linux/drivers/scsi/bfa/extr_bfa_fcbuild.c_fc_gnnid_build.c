
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
typedef int u16 ;
struct fchs_s {int dummy; } ;
struct ct_hdr_s {int dummy; } ;
struct TYPE_3__ {int dap; } ;
typedef TYPE_1__ fcgs_gnnid_req_t ;


 int FC_NAME_SERVER ;
 int GS_GNN_ID ;
 int bfa_hton3b (int ) ;
 int fc_gs_cthdr_build (struct ct_hdr_s*,int ,int ) ;
 int fc_gs_fchdr_build (struct fchs_s*,int ,int ,int) ;
 int memset (TYPE_1__*,int ,int) ;

u16
fc_gnnid_build(struct fchs_s *fchs, void *pyld, u32 s_id, u16 ox_id,
        u32 port_id)
{
 struct ct_hdr_s *cthdr = (struct ct_hdr_s *) pyld;
 fcgs_gnnid_req_t *gnnid = (fcgs_gnnid_req_t *) (cthdr + 1);
 u32 d_id = bfa_hton3b(FC_NAME_SERVER);

 fc_gs_fchdr_build(fchs, d_id, s_id, ox_id);
 fc_gs_cthdr_build(cthdr, s_id, GS_GNN_ID);

 memset(gnnid, 0, sizeof(fcgs_gnnid_req_t));
 gnnid->dap = port_id;
 return sizeof(fcgs_gnnid_req_t) + sizeof(struct ct_hdr_s);
}
