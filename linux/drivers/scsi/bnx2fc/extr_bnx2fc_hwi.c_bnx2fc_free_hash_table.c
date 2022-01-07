
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
typedef int u32 ;
struct bnx2fc_hba {int hash_tbl_segment_count; int hash_tbl_pbl_dma; int * hash_tbl_pbl; TYPE_1__* pcidev; int ** hash_tbl_segments; } ;
typedef int dma_addr_t ;
struct TYPE_2__ {int dev; } ;


 int BNX2FC_HASH_TBL_CHUNK_SIZE ;
 int PAGE_SIZE ;
 int dma_free_coherent (int *,int ,int *,int) ;
 int kfree (int **) ;
 int le32_to_cpu (int ) ;

__attribute__((used)) static void bnx2fc_free_hash_table(struct bnx2fc_hba *hba)
{
 int i;
 int segment_count;
 u32 *pbl;

 if (hba->hash_tbl_segments) {

  pbl = hba->hash_tbl_pbl;
  if (pbl) {
   segment_count = hba->hash_tbl_segment_count;
   for (i = 0; i < segment_count; ++i) {
    dma_addr_t dma_address;

    dma_address = le32_to_cpu(*pbl);
    ++pbl;
    dma_address += ((u64)le32_to_cpu(*pbl)) << 32;
    ++pbl;
    dma_free_coherent(&hba->pcidev->dev,
        BNX2FC_HASH_TBL_CHUNK_SIZE,
        hba->hash_tbl_segments[i],
        dma_address);
   }
  }

  kfree(hba->hash_tbl_segments);
  hba->hash_tbl_segments = ((void*)0);
 }

 if (hba->hash_tbl_pbl) {
  dma_free_coherent(&hba->pcidev->dev, PAGE_SIZE,
        hba->hash_tbl_pbl,
        hba->hash_tbl_pbl_dma);
  hba->hash_tbl_pbl = ((void*)0);
 }
}
