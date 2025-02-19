
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct q6v5 {int dev; scalar_t__ rmb_base; } ;
struct firmware {int dummy; } ;
typedef int dma_addr_t ;


 int BIT (int ) ;
 unsigned long DMA_ATTR_FORCE_CONTIGUOUS ;
 int EAGAIN ;
 int ENOMEM ;
 int ETIMEDOUT ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (void*) ;
 int PTR_ERR (void*) ;
 int QCOM_SCM_VMID_HLOS ;
 int RMB_CMD_META_DATA_READY ;
 scalar_t__ RMB_MBA_COMMAND_REG ;
 int RMB_MBA_META_DATA_AUTH_SUCCESS ;
 scalar_t__ RMB_PMI_META_DATA_REG ;
 int dev_err (int ,char*,...) ;
 int dev_warn (int ,char*) ;
 void* dma_alloc_attrs (int ,size_t,int *,int ,unsigned long) ;
 int dma_free_attrs (int ,size_t,void*,int ,unsigned long) ;
 int kfree (void*) ;
 int memcpy (void*,void*,size_t) ;
 int q6v5_rmb_mba_wait (struct q6v5*,int ,int) ;
 int q6v5_xfer_mem_ownership (struct q6v5*,int*,int,int ,size_t) ;
 void* qcom_mdt_read_metadata (struct firmware const*,size_t*) ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static int q6v5_mpss_init_image(struct q6v5 *qproc, const struct firmware *fw)
{
 unsigned long dma_attrs = DMA_ATTR_FORCE_CONTIGUOUS;
 dma_addr_t phys;
 void *metadata;
 int mdata_perm;
 int xferop_ret;
 size_t size;
 void *ptr;
 int ret;

 metadata = qcom_mdt_read_metadata(fw, &size);
 if (IS_ERR(metadata))
  return PTR_ERR(metadata);

 ptr = dma_alloc_attrs(qproc->dev, size, &phys, GFP_KERNEL, dma_attrs);
 if (!ptr) {
  kfree(metadata);
  dev_err(qproc->dev, "failed to allocate mdt buffer\n");
  return -ENOMEM;
 }

 memcpy(ptr, metadata, size);


 mdata_perm = BIT(QCOM_SCM_VMID_HLOS);
 ret = q6v5_xfer_mem_ownership(qproc, &mdata_perm, 1, phys, size);
 if (ret) {
  dev_err(qproc->dev,
   "assigning Q6 access to metadata failed: %d\n", ret);
  ret = -EAGAIN;
  goto free_dma_attrs;
 }

 writel(phys, qproc->rmb_base + RMB_PMI_META_DATA_REG);
 writel(RMB_CMD_META_DATA_READY, qproc->rmb_base + RMB_MBA_COMMAND_REG);

 ret = q6v5_rmb_mba_wait(qproc, RMB_MBA_META_DATA_AUTH_SUCCESS, 1000);
 if (ret == -ETIMEDOUT)
  dev_err(qproc->dev, "MPSS header authentication timed out\n");
 else if (ret < 0)
  dev_err(qproc->dev, "MPSS header authentication failed: %d\n", ret);


 xferop_ret = q6v5_xfer_mem_ownership(qproc, &mdata_perm, 0, phys, size);
 if (xferop_ret)
  dev_warn(qproc->dev,
    "mdt buffer not reclaimed system may become unstable\n");

free_dma_attrs:
 dma_free_attrs(qproc->dev, size, ptr, phys, dma_attrs);
 kfree(metadata);

 return ret < 0 ? ret : 0;
}
