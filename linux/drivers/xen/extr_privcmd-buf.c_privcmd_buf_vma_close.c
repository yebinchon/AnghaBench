
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm_area_struct {struct privcmd_buf_vma_private* vm_private_data; } ;
struct privcmd_buf_vma_private {int users; struct privcmd_buf_private* file_priv; } ;
struct privcmd_buf_private {int lock; } ;


 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int privcmd_buf_vmapriv_free (struct privcmd_buf_vma_private*) ;

__attribute__((used)) static void privcmd_buf_vma_close(struct vm_area_struct *vma)
{
 struct privcmd_buf_vma_private *vma_priv = vma->vm_private_data;
 struct privcmd_buf_private *file_priv;

 if (!vma_priv)
  return;

 file_priv = vma_priv->file_priv;

 mutex_lock(&file_priv->lock);

 vma_priv->users--;
 if (!vma_priv->users)
  privcmd_buf_vmapriv_free(vma_priv);

 mutex_unlock(&file_priv->lock);
}
