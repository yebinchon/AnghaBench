
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;


 int ARRAY_SIZE (int const*) ;
 int const TRANS_TX_FAIL_BASE ;
__attribute__((used)) static int parse_trans_tx_err_code_v2_hw(u32 err_msk)
{
 static const u8 trans_tx_err_code_prio[] = {
  129,
  157,
  131,
  130,
  139,
  158,
  142,
  132,
  133,
  138,
  141,
  140,
  137,
  134,
  135,
  136,
  128,
  149,
  151,
  152,
  153,
  154,
  155,
  148,
  150,
  145,
  156,
  147,
  146,
  144,
  143,
 };
 int index, i;

 for (i = 0; i < ARRAY_SIZE(trans_tx_err_code_prio); i++) {
  index = trans_tx_err_code_prio[i] - TRANS_TX_FAIL_BASE;
  if (err_msk & (1 << index))
   return trans_tx_err_code_prio[i];
 }
 return -1;
}
