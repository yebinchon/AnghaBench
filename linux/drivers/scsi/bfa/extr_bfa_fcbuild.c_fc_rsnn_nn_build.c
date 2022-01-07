
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wwn_t ;
typedef scalar_t__ u8 ;
typedef int u32 ;
typedef int u16 ;
struct fchs_s {int dummy; } ;
struct fcgs_rsnn_nn_req_s {int snn; scalar_t__ snn_len; int node_name; } ;
struct ct_hdr_s {int dummy; } ;


 int FC_NAME_SERVER ;
 int GS_RSNN_NN ;
 int bfa_hton3b (int ) ;
 int fc_gs_cthdr_build (struct ct_hdr_s*,int ,int ) ;
 int fc_gs_fchdr_build (struct fchs_s*,int ,int ,int ) ;
 int memset (struct fcgs_rsnn_nn_req_s*,int ,int) ;
 int strlcpy (int ,scalar_t__*,int) ;
 scalar_t__ strlen (int ) ;

u16
fc_rsnn_nn_build(struct fchs_s *fchs, void *pyld, u32 s_id,
   wwn_t node_name, u8 *name)
{
 struct ct_hdr_s *cthdr = (struct ct_hdr_s *) pyld;
 struct fcgs_rsnn_nn_req_s *rsnn_nn =
  (struct fcgs_rsnn_nn_req_s *) (cthdr + 1);
 u32 d_id = bfa_hton3b(FC_NAME_SERVER);

 fc_gs_fchdr_build(fchs, d_id, s_id, 0);
 fc_gs_cthdr_build(cthdr, s_id, GS_RSNN_NN);

 memset(rsnn_nn, 0, sizeof(struct fcgs_rsnn_nn_req_s));

 rsnn_nn->node_name = node_name;
 strlcpy(rsnn_nn->snn, name, sizeof(rsnn_nn->snn));
 rsnn_nn->snn_len = (u8) strlen(rsnn_nn->snn);

 return sizeof(struct fcgs_rsnn_nn_req_s) + sizeof(struct ct_hdr_s);
}
