
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct mvumi_sgl {unsigned int flags; void* baseaddr_h; void* baseaddr_l; } ;
struct mvumi_hba {unsigned int eot_flag; TYPE_1__* pdev; } ;
struct mvumi_cmd {void* data_buf; TYPE_2__* frame; } ;
typedef int dma_addr_t ;
struct TYPE_4__ {int sg_counts; int * payload; } ;
struct TYPE_3__ {int dev; } ;


 int GFP_KERNEL ;
 void* cpu_to_le32 (unsigned int) ;
 void* dma_alloc_coherent (int *,unsigned int,int *,int ) ;
 unsigned int lower_32_bits (int ) ;
 int sgd_setsz (struct mvumi_hba*,struct mvumi_sgl*,void*) ;
 unsigned int upper_32_bits (int ) ;

__attribute__((used)) static int mvumi_internal_cmd_sgl(struct mvumi_hba *mhba, struct mvumi_cmd *cmd,
       unsigned int size)
{
 struct mvumi_sgl *m_sg;
 void *virt_addr;
 dma_addr_t phy_addr;

 if (size == 0)
  return 0;

 virt_addr = dma_alloc_coherent(&mhba->pdev->dev, size, &phy_addr,
           GFP_KERNEL);
 if (!virt_addr)
  return -1;

 m_sg = (struct mvumi_sgl *) &cmd->frame->payload[0];
 cmd->frame->sg_counts = 1;
 cmd->data_buf = virt_addr;

 m_sg->baseaddr_l = cpu_to_le32(lower_32_bits(phy_addr));
 m_sg->baseaddr_h = cpu_to_le32(upper_32_bits(phy_addr));
 m_sg->flags = 1U << mhba->eot_flag;
 sgd_setsz(mhba, m_sg, cpu_to_le32(size));

 return 0;
}
