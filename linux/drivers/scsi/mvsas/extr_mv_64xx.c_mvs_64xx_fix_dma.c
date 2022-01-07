
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mvs_prd {int len; int addr; } ;
struct mvs_info {int bulk_buffer_dma; } ;
typedef int dma_addr_t ;


 int MAX_SG_ENTRY ;
 int cpu_to_le32 (int) ;
 int cpu_to_le64 (int ) ;

__attribute__((used)) static void mvs_64xx_fix_dma(struct mvs_info *mvi, u32 phy_mask,
    int buf_len, int from, void *prd)
{
 int i;
 struct mvs_prd *buf_prd = prd;
 dma_addr_t buf_dma = mvi->bulk_buffer_dma;

 buf_prd += from;
 for (i = 0; i < MAX_SG_ENTRY - from; i++) {
  buf_prd->addr = cpu_to_le64(buf_dma);
  buf_prd->len = cpu_to_le32(buf_len);
  ++buf_prd;
 }
}
