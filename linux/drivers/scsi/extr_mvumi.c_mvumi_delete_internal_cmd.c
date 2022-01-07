
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct mvumi_sgl {int baseaddr_h; scalar_t__ baseaddr_l; } ;
struct mvumi_hba {unsigned int ib_max_size; TYPE_1__* pdev; } ;
struct mvumi_cmd {int frame_phys; TYPE_2__* frame; TYPE_2__* data_buf; } ;
typedef int dma_addr_t ;
struct TYPE_4__ {int * payload; scalar_t__ sg_counts; } ;
struct TYPE_3__ {int dev; } ;


 int dma_free_coherent (int *,unsigned int,TYPE_2__*,int) ;
 int kfree (struct mvumi_cmd*) ;
 int sgd_getsz (struct mvumi_hba*,struct mvumi_sgl*,unsigned int) ;

__attribute__((used)) static void mvumi_delete_internal_cmd(struct mvumi_hba *mhba,
      struct mvumi_cmd *cmd)
{
 struct mvumi_sgl *m_sg;
 unsigned int size;
 dma_addr_t phy_addr;

 if (cmd && cmd->frame) {
  if (cmd->frame->sg_counts) {
   m_sg = (struct mvumi_sgl *) &cmd->frame->payload[0];
   sgd_getsz(mhba, m_sg, size);

   phy_addr = (dma_addr_t) m_sg->baseaddr_l |
    (dma_addr_t) ((m_sg->baseaddr_h << 16) << 16);

   dma_free_coherent(&mhba->pdev->dev, size, cmd->data_buf,
        phy_addr);
  }
  dma_free_coherent(&mhba->pdev->dev, mhba->ib_max_size,
    cmd->frame, cmd->frame_phys);
  kfree(cmd);
 }
}
