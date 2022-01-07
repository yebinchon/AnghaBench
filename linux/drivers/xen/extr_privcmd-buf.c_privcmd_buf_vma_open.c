
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vm_area_struct {struct privcmd_buf_vma_private* vm_private_data; } ;
struct privcmd_buf_vma_private {TYPE_1__* file_priv; int users; } ;
struct TYPE_2__ {int lock; } ;


 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static void privcmd_buf_vma_open(struct vm_area_struct *vma)
{
 struct privcmd_buf_vma_private *vma_priv = vma->vm_private_data;

 if (!vma_priv)
  return;

 mutex_lock(&vma_priv->file_priv->lock);
 vma_priv->users++;
 mutex_unlock(&vma_priv->file_priv->lock);
}
