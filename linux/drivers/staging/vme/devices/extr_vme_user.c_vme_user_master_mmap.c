
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vme_user_vma_priv {unsigned int minor; int refcnt; } ;
struct vm_area_struct {struct vme_user_vma_priv* vm_private_data; int * vm_ops; } ;
struct TYPE_2__ {int mutex; int mmap_count; int resource; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 TYPE_1__* image ;
 struct vme_user_vma_priv* kmalloc (int,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int refcount_set (int *,int) ;
 int vme_master_mmap (int ,struct vm_area_struct*) ;
 int vme_user_vm_ops ;

__attribute__((used)) static int vme_user_master_mmap(unsigned int minor, struct vm_area_struct *vma)
{
 int err;
 struct vme_user_vma_priv *vma_priv;

 mutex_lock(&image[minor].mutex);

 err = vme_master_mmap(image[minor].resource, vma);
 if (err) {
  mutex_unlock(&image[minor].mutex);
  return err;
 }

 vma_priv = kmalloc(sizeof(*vma_priv), GFP_KERNEL);
 if (!vma_priv) {
  mutex_unlock(&image[minor].mutex);
  return -ENOMEM;
 }

 vma_priv->minor = minor;
 refcount_set(&vma_priv->refcnt, 1);
 vma->vm_ops = &vme_user_vm_ops;
 vma->vm_private_data = vma_priv;

 image[minor].mmap_count++;

 mutex_unlock(&image[minor].mutex);

 return 0;
}
