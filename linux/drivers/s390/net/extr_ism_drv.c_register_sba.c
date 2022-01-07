
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int len; int cmd; } ;
struct TYPE_5__ {void* sba; TYPE_1__ hdr; } ;
union ism_reg_sba {TYPE_2__ request; } ;
struct ism_sba {int dummy; } ;
struct ism_dev {void* sba_dma_addr; struct ism_sba* sba; TYPE_3__* pdev; } ;
typedef void* dma_addr_t ;
typedef int cmd ;
struct TYPE_6__ {int dev; } ;


 int EIO ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int ISM_REG_SBA ;
 int PAGE_SIZE ;
 struct ism_sba* dma_alloc_coherent (int *,int ,void**,int ) ;
 int dma_free_coherent (int *,int ,struct ism_sba*,void*) ;
 scalar_t__ ism_cmd (struct ism_dev*,union ism_reg_sba*) ;
 int memset (union ism_reg_sba*,int ,int) ;

__attribute__((used)) static int register_sba(struct ism_dev *ism)
{
 union ism_reg_sba cmd;
 dma_addr_t dma_handle;
 struct ism_sba *sba;

 sba = dma_alloc_coherent(&ism->pdev->dev, PAGE_SIZE, &dma_handle,
     GFP_KERNEL);
 if (!sba)
  return -ENOMEM;

 memset(&cmd, 0, sizeof(cmd));
 cmd.request.hdr.cmd = ISM_REG_SBA;
 cmd.request.hdr.len = sizeof(cmd.request);
 cmd.request.sba = dma_handle;

 if (ism_cmd(ism, &cmd)) {
  dma_free_coherent(&ism->pdev->dev, PAGE_SIZE, sba, dma_handle);
  return -EIO;
 }

 ism->sba = sba;
 ism->sba_dma_addr = dma_handle;

 return 0;
}
