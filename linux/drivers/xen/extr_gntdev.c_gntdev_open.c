
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct inode {int dummy; } ;
struct TYPE_3__ {int * ops; } ;
struct gntdev_priv {int dma_dev; int mm; TYPE_1__ mn; int dmabuf_priv; int lock; int freeable_maps; int maps; } ;
struct file {struct gntdev_priv* private_data; } ;
struct TYPE_4__ {int this_device; } ;


 int DMA_BIT_MASK (int) ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int current ;
 int dma_coerce_mask_and_coherent (int ,int ) ;
 int get_task_mm (int ) ;
 int gntdev_dmabuf_init (struct file*) ;
 TYPE_2__ gntdev_miscdev ;
 int gntdev_mmu_ops ;
 int kfree (struct gntdev_priv*) ;
 struct gntdev_priv* kzalloc (int,int ) ;
 int mmput (int ) ;
 int mmu_notifier_register (TYPE_1__*,int ) ;
 int mutex_init (int *) ;
 int pr_debug (char*,struct gntdev_priv*) ;
 scalar_t__ use_ptemod ;

__attribute__((used)) static int gntdev_open(struct inode *inode, struct file *flip)
{
 struct gntdev_priv *priv;
 int ret = 0;

 priv = kzalloc(sizeof(*priv), GFP_KERNEL);
 if (!priv)
  return -ENOMEM;

 INIT_LIST_HEAD(&priv->maps);
 INIT_LIST_HEAD(&priv->freeable_maps);
 mutex_init(&priv->lock);
 if (use_ptemod) {
  priv->mm = get_task_mm(current);
  if (!priv->mm) {
   kfree(priv);
   return -ENOMEM;
  }
  priv->mn.ops = &gntdev_mmu_ops;
  ret = mmu_notifier_register(&priv->mn, priv->mm);
  mmput(priv->mm);
 }

 if (ret) {
  kfree(priv);
  return ret;
 }

 flip->private_data = priv;




 pr_debug("priv %p\n", priv);

 return 0;
}
