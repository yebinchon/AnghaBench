
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct csio_hw {int * mb_mempool; int * rnode_mempool; int * scsi_dma_pool; } ;


 int dma_pool_destroy (int *) ;
 int mempool_destroy (int *) ;

__attribute__((used)) static void
csio_resource_free(struct csio_hw *hw)
{
 dma_pool_destroy(hw->scsi_dma_pool);
 hw->scsi_dma_pool = ((void*)0);
 mempool_destroy(hw->rnode_mempool);
 hw->rnode_mempool = ((void*)0);
 mempool_destroy(hw->mb_mempool);
 hw->mb_mempool = ((void*)0);
}
