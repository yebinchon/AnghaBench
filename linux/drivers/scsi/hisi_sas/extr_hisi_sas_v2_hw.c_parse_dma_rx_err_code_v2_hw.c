
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;


 int ARRAY_SIZE (int const*) ;
 int const DMA_RX_ERR_BASE ;
__attribute__((used)) static int parse_dma_rx_err_code_v2_hw(u32 err_msk)
{
 static const u8 dma_rx_err_code_prio[] = {
  129,
  153,
  152,
  151,
  128,
  133,
  134,
  130,
  132,
  131,
  145,
  135,
  136,
  137,
  141,
  139,
  140,
  138,
  143,
  142,
  144,
  148,
  149,
  147,
  150,
  146,
 };
 int index, i;

 for (i = 0; i < ARRAY_SIZE(dma_rx_err_code_prio); i++) {
  index = dma_rx_err_code_prio[i] - DMA_RX_ERR_BASE;
  if (err_msk & (1 << index))
   return dma_rx_err_code_prio[i];
 }
 return -1;
}
