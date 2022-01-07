
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int len; int cmd; } ;
struct TYPE_5__ {int len; void* ieq; TYPE_1__ hdr; } ;
union ism_reg_ieq {TYPE_2__ request; } ;
struct ism_eq {int dummy; } ;
struct ism_dev {int ieq_idx; void* ieq_dma_addr; struct ism_eq* ieq; TYPE_3__* pdev; } ;
typedef void* dma_addr_t ;
typedef int cmd ;
struct TYPE_6__ {int dev; } ;


 int EIO ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int ISM_REG_IEQ ;
 int PAGE_SIZE ;
 struct ism_eq* dma_alloc_coherent (int *,int ,void**,int ) ;
 int dma_free_coherent (int *,int ,struct ism_eq*,void*) ;
 scalar_t__ ism_cmd (struct ism_dev*,union ism_reg_ieq*) ;
 int memset (union ism_reg_ieq*,int ,int) ;

__attribute__((used)) static int register_ieq(struct ism_dev *ism)
{
 union ism_reg_ieq cmd;
 dma_addr_t dma_handle;
 struct ism_eq *ieq;

 ieq = dma_alloc_coherent(&ism->pdev->dev, PAGE_SIZE, &dma_handle,
     GFP_KERNEL);
 if (!ieq)
  return -ENOMEM;

 memset(&cmd, 0, sizeof(cmd));
 cmd.request.hdr.cmd = ISM_REG_IEQ;
 cmd.request.hdr.len = sizeof(cmd.request);
 cmd.request.ieq = dma_handle;
 cmd.request.len = sizeof(*ieq);

 if (ism_cmd(ism, &cmd)) {
  dma_free_coherent(&ism->pdev->dev, PAGE_SIZE, ieq, dma_handle);
  return -EIO;
 }

 ism->ieq = ieq;
 ism->ieq_idx = -1;
 ism->ieq_dma_addr = dma_handle;

 return 0;
}
