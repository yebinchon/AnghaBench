
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct fchs_s {int rx_id; int ox_id; } ;
struct fc_ba_acc_s {int rx_id; int ox_id; } ;
typedef int __be16 ;


 int ba_acc_tmpl ;
 int fc_bls_rsp_build (struct fchs_s*,int ,int ,int ) ;
 int memcpy (struct fc_ba_acc_s*,int *,int) ;

u16
fc_ba_acc_build(struct fchs_s *fchs, struct fc_ba_acc_s *ba_acc, u32 d_id,
  u32 s_id, __be16 ox_id, u16 rx_id)
{
 fc_bls_rsp_build(fchs, d_id, s_id, ox_id);

 memcpy(ba_acc, &ba_acc_tmpl, sizeof(struct fc_ba_acc_s));

 fchs->rx_id = rx_id;

 ba_acc->ox_id = fchs->ox_id;
 ba_acc->rx_id = fchs->rx_id;

 return sizeof(struct fc_ba_acc_s);
}
