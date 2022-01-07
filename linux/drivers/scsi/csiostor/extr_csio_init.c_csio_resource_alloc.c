
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct csio_wrm {scalar_t__ num_q; } ;
struct csio_rnode {int dummy; } ;
struct csio_mb {int dummy; } ;
struct csio_hw {int * mb_mempool; int * rnode_mempool; int scsi_dma_pool; TYPE_1__* pdev; } ;
struct TYPE_2__ {int dev; } ;


 scalar_t__ CSIO_HW_NEQ ;
 scalar_t__ CSIO_HW_NFLQ ;
 scalar_t__ CSIO_HW_NINTXQ ;
 scalar_t__ CSIO_HW_NIQ ;
 int CSIO_MAX_SCSI_QSETS ;
 int CSIO_MIN_MEMPOOL_SZ ;
 int CSIO_SCSI_RSP_LEN ;
 int ENOMEM ;
 struct csio_wrm* csio_hw_to_wrm (struct csio_hw*) ;
 int dma_pool_create (char*,int *,int ,int,int ) ;
 void* mempool_create_kmalloc_pool (int ,int) ;
 int mempool_destroy (int *) ;

__attribute__((used)) static int
csio_resource_alloc(struct csio_hw *hw)
{
 struct csio_wrm *wrm = csio_hw_to_wrm(hw);
 int rv = -ENOMEM;

 wrm->num_q = ((CSIO_MAX_SCSI_QSETS * 2) + CSIO_HW_NIQ +
         CSIO_HW_NEQ + CSIO_HW_NFLQ + CSIO_HW_NINTXQ);

 hw->mb_mempool = mempool_create_kmalloc_pool(CSIO_MIN_MEMPOOL_SZ,
        sizeof(struct csio_mb));
 if (!hw->mb_mempool)
  goto err;

 hw->rnode_mempool = mempool_create_kmalloc_pool(CSIO_MIN_MEMPOOL_SZ,
           sizeof(struct csio_rnode));
 if (!hw->rnode_mempool)
  goto err_free_mb_mempool;

 hw->scsi_dma_pool = dma_pool_create("csio_scsi_dma_pool",
         &hw->pdev->dev, CSIO_SCSI_RSP_LEN,
         8, 0);
 if (!hw->scsi_dma_pool)
  goto err_free_rn_pool;

 return 0;

err_free_rn_pool:
 mempool_destroy(hw->rnode_mempool);
 hw->rnode_mempool = ((void*)0);
err_free_mb_mempool:
 mempool_destroy(hw->mb_mempool);
 hw->mb_mempool = ((void*)0);
err:
 return rv;
}
