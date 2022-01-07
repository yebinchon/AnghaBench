
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kpc_dma_device {int open_count; } ;
struct inode {int dummy; } ;
struct file {struct dev_private_data* private_data; } ;
struct dev_private_data {struct kpc_dma_device* ldev; } ;


 int EBUSY ;
 int ENODEV ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int atomic_dec_and_test (int *) ;
 int atomic_inc (int *) ;
 int iminor (struct inode*) ;
 struct kpc_dma_device* kpc_dma_lookup_device (int ) ;
 struct dev_private_data* kzalloc (int,int ) ;

__attribute__((used)) static
int kpc_dma_open(struct inode *inode, struct file *filp)
{
 struct dev_private_data *priv;
 struct kpc_dma_device *ldev = kpc_dma_lookup_device(iminor(inode));

 if (!ldev)
  return -ENODEV;

 if (!atomic_dec_and_test(&ldev->open_count)) {
  atomic_inc(&ldev->open_count);
  return -EBUSY;
 }

 priv = kzalloc(sizeof(struct dev_private_data), GFP_KERNEL);
 if (!priv)
  return -ENOMEM;

 priv->ldev = ldev;
 filp->private_data = priv;

 return 0;
}
