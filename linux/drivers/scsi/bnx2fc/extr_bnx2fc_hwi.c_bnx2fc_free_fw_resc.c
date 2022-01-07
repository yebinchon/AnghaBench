
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct regpair {int dummy; } ;
struct fcoe_t2_hash_table_entry {int dummy; } ;
struct bnx2fc_hba {int * t2_hash_tbl; int t2_hash_tbl_dma; TYPE_1__* pcidev; int * t2_hash_tbl_ptr; int t2_hash_tbl_ptr_dma; int * dummy_buffer; int dummy_buf_dma; int * stats_buffer; int stats_buf_dma; } ;
struct TYPE_2__ {int dev; } ;


 int BNX2FC_NUM_MAX_SESS ;
 int PAGE_SIZE ;
 int bnx2fc_free_hash_table (struct bnx2fc_hba*) ;
 int dma_free_coherent (int *,int,int *,int ) ;

void bnx2fc_free_fw_resc(struct bnx2fc_hba *hba)
{
 u32 mem_size;

 if (hba->stats_buffer) {
  dma_free_coherent(&hba->pcidev->dev, PAGE_SIZE,
      hba->stats_buffer, hba->stats_buf_dma);
  hba->stats_buffer = ((void*)0);
 }

 if (hba->dummy_buffer) {
  dma_free_coherent(&hba->pcidev->dev, PAGE_SIZE,
      hba->dummy_buffer, hba->dummy_buf_dma);
  hba->dummy_buffer = ((void*)0);
 }

 if (hba->t2_hash_tbl_ptr) {
  mem_size = BNX2FC_NUM_MAX_SESS * sizeof(struct regpair);
  dma_free_coherent(&hba->pcidev->dev, mem_size,
        hba->t2_hash_tbl_ptr,
        hba->t2_hash_tbl_ptr_dma);
  hba->t2_hash_tbl_ptr = ((void*)0);
 }

 if (hba->t2_hash_tbl) {
  mem_size = BNX2FC_NUM_MAX_SESS *
       sizeof(struct fcoe_t2_hash_table_entry);
  dma_free_coherent(&hba->pcidev->dev, mem_size,
        hba->t2_hash_tbl, hba->t2_hash_tbl_dma);
  hba->t2_hash_tbl = ((void*)0);
 }
 bnx2fc_free_hash_table(hba);
}
