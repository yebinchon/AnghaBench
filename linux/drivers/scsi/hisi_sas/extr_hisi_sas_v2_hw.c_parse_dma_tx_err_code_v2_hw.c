
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;


 int ARRAY_SIZE (int const*) ;






 int const DMA_TX_ERR_BASE ;
 int DMA_TX_ERR_MSK ;






__attribute__((used)) static int parse_dma_tx_err_code_v2_hw(u32 err_msk)
{
 static const u8 dma_tx_err_code_prio[] = {
  130,
  131,
  129,
  128,
  132,
  135,
  136,
  137,
  134,
  138,
  133,
 };
 int index, i;

 for (i = 0; i < ARRAY_SIZE(dma_tx_err_code_prio); i++) {
  index = dma_tx_err_code_prio[i] - DMA_TX_ERR_BASE;
  err_msk = err_msk & DMA_TX_ERR_MSK;
  if (err_msk & (1 << index))
   return dma_tx_err_code_prio[i];
 }
 return -1;
}
