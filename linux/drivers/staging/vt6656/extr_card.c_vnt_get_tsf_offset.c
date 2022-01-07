
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u8 ;
typedef scalar_t__ u64 ;


 size_t MAX_RATE ;
 scalar_t__* cw_rxbcntsf_off ;

u64 vnt_get_tsf_offset(u8 rx_rate, u64 tsf1, u64 tsf2)
{
 return tsf1 - tsf2 - (u64)cw_rxbcntsf_off[rx_rate % MAX_RATE];
}
