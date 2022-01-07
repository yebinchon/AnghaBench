
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct c2h_evt_hdr_88xx {scalar_t__ id; } ;
typedef int s32 ;


 scalar_t__ C2H_CCX_TX_RPT ;

s32 c2h_id_filter_ccx_8723b(u8 *buf)
{
 struct c2h_evt_hdr_88xx *c2h_evt = (struct c2h_evt_hdr_88xx *)buf;
 s32 ret = 0;
 if (c2h_evt->id == C2H_CCX_TX_RPT)
  ret = 1;

 return ret;
}
