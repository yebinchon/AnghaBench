
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;


 int ARRAY_SIZE (int const*) ;

 int const SIPC_RX_ERR_BASE ;
 int SIPC_RX_ERR_MSK ;
__attribute__((used)) static int parse_sipc_rx_err_code_v2_hw(u32 err_msk)
{
 static const u8 sipc_rx_err_code_prio[] = {
  136,
  133,
  137,
  129,
  128,
  131,
  134,
  135,
  132,
  130,
  138,
 };
 int index, i;

 for (i = 0; i < ARRAY_SIZE(sipc_rx_err_code_prio); i++) {
  index = sipc_rx_err_code_prio[i] - SIPC_RX_ERR_BASE;
  err_msk = err_msk & SIPC_RX_ERR_MSK;
  if (err_msk & (1 << (index + 0x10)))
   return sipc_rx_err_code_prio[i];
 }
 return -1;
}
