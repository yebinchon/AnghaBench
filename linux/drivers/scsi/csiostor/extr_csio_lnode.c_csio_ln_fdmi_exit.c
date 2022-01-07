
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct csio_lnode {TYPE_2__* mgmt_req; } ;
struct csio_hw {TYPE_1__* pdev; } ;
struct csio_dma_buf {int paddr; scalar_t__ vaddr; int len; } ;
struct TYPE_4__ {struct csio_dma_buf dma_buf; } ;
struct TYPE_3__ {int dev; } ;


 struct csio_hw* csio_lnode_to_hw (struct csio_lnode*) ;
 int dma_free_coherent (int *,int ,scalar_t__,int ) ;
 int kfree (TYPE_2__*) ;

__attribute__((used)) static int
csio_ln_fdmi_exit(struct csio_lnode *ln)
{
 struct csio_dma_buf *dma_buf;
 struct csio_hw *hw = csio_lnode_to_hw(ln);

 if (!ln->mgmt_req)
  return 0;

 dma_buf = &ln->mgmt_req->dma_buf;
 if (dma_buf->vaddr)
  dma_free_coherent(&hw->pdev->dev, dma_buf->len, dma_buf->vaddr,
        dma_buf->paddr);

 kfree(ln->mgmt_req);
 return 0;
}
