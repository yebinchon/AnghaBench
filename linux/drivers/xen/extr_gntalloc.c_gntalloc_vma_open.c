
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm_area_struct {struct gntalloc_vma_private_data* vm_private_data; } ;
struct gntalloc_vma_private_data {int users; } ;


 int gref_mutex ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static void gntalloc_vma_open(struct vm_area_struct *vma)
{
 struct gntalloc_vma_private_data *priv = vma->vm_private_data;

 if (!priv)
  return;

 mutex_lock(&gref_mutex);
 priv->users++;
 mutex_unlock(&gref_mutex);
}
