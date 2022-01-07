
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vme_user_vma_priv {int refcnt; } ;
struct vm_area_struct {struct vme_user_vma_priv* vm_private_data; } ;


 int refcount_inc (int *) ;

__attribute__((used)) static void vme_user_vm_open(struct vm_area_struct *vma)
{
 struct vme_user_vma_priv *vma_priv = vma->vm_private_data;

 refcount_inc(&vma_priv->refcnt);
}
