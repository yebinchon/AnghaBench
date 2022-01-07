
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;


 int ARRAY_SIZE (int const*) ;
 int const TRANS_RX_FAIL_BASE ;






__attribute__((used)) static int parse_trans_rx_err_code_v2_hw(u32 err_msk)
{
 static const u8 trans_rx_err_code_prio[] = {
  135,
  139,
  134,
  137,
  138,
  133,
  136,
  140,
  142,
  144,
  145,
  146,
  147,
  148,
  159,
  143,
  141,
  149,
  128,
  129,
  158,
  157,
  156,
  155,
  150,
  131,
  130,
  154,
  153,
  152,
  151,
  132,
 };
 int index, i;

 for (i = 0; i < ARRAY_SIZE(trans_rx_err_code_prio); i++) {
  index = trans_rx_err_code_prio[i] - TRANS_RX_FAIL_BASE;
  if (err_msk & (1 << index))
   return trans_rx_err_code_prio[i];
 }
 return -1;
}
