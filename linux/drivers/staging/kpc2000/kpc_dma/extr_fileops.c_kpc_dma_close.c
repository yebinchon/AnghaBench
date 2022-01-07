
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct kpc_dma_device {int open_count; struct kpc_dma_descriptor* desc_completed; TYPE_1__* pldev; struct kpc_dma_descriptor* desc_next; } ;
struct kpc_dma_descriptor {int DescControlFlags; struct kpc_dma_descriptor* Next; scalar_t__ acd; } ;
struct inode {int dummy; } ;
struct file {scalar_t__ private_data; } ;
struct dev_private_data {struct kpc_dma_device* ldev; } ;
struct TYPE_2__ {int dev; } ;


 int ACD_FLAG_ABORT ;
 int DMA_DESC_CTL_EOP ;
 int atomic_inc (int *) ;
 int clear_desc (struct kpc_dma_descriptor*) ;
 int dev_dbg (int *,char*,struct kpc_dma_descriptor*,scalar_t__) ;
 int kfree (struct dev_private_data*) ;
 int lock_engine (struct kpc_dma_device*) ;
 int start_dma_engine (struct kpc_dma_device*) ;
 int stop_dma_engine (struct kpc_dma_device*) ;
 int transfer_complete_cb (scalar_t__,int ,int ) ;
 int unlock_engine (struct kpc_dma_device*) ;

__attribute__((used)) static
int kpc_dma_close(struct inode *inode, struct file *filp)
{
 struct kpc_dma_descriptor *cur;
 struct dev_private_data *priv = (struct dev_private_data *)filp->private_data;
 struct kpc_dma_device *eng = priv->ldev;

 lock_engine(eng);

 stop_dma_engine(eng);

 cur = eng->desc_completed->Next;
 while (cur != eng->desc_next) {
  dev_dbg(&eng->pldev->dev, "Aborting descriptor %p (acd = %p)\n", cur, cur->acd);
  if (cur->DescControlFlags & DMA_DESC_CTL_EOP) {
   if (cur->acd)
    transfer_complete_cb(cur->acd, 0, ACD_FLAG_ABORT);
  }

  clear_desc(cur);
  eng->desc_completed = cur;

  cur = cur->Next;
 }

 start_dma_engine(eng);

 unlock_engine(eng);

 atomic_inc(&priv->ldev->open_count);
 kfree(priv);
 return 0;
}
