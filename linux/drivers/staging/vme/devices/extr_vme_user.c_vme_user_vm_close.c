
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vme_user_vma_priv {unsigned int minor; int refcnt; } ;
struct vm_area_struct {struct vme_user_vma_priv* vm_private_data; } ;
struct TYPE_2__ {int mutex; int mmap_count; } ;


 TYPE_1__* image ;
 int kfree (struct vme_user_vma_priv*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int refcount_dec_and_test (int *) ;

__attribute__((used)) static void vme_user_vm_close(struct vm_area_struct *vma)
{
 struct vme_user_vma_priv *vma_priv = vma->vm_private_data;
 unsigned int minor = vma_priv->minor;

 if (!refcount_dec_and_test(&vma_priv->refcnt))
  return;

 mutex_lock(&image[minor].mutex);
 image[minor].mmap_count--;
 mutex_unlock(&image[minor].mutex);

 kfree(vma_priv);
}
