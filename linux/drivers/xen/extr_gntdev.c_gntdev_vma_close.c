
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm_area_struct {struct gntdev_grant_map* vm_private_data; struct file* vm_file; } ;
struct gntdev_priv {int lock; } ;
struct gntdev_grant_map {int * vma; } ;
struct file {struct gntdev_priv* private_data; } ;


 int gntdev_put_map (struct gntdev_priv*,struct gntdev_grant_map*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int pr_debug (char*,struct vm_area_struct*) ;
 scalar_t__ use_ptemod ;

__attribute__((used)) static void gntdev_vma_close(struct vm_area_struct *vma)
{
 struct gntdev_grant_map *map = vma->vm_private_data;
 struct file *file = vma->vm_file;
 struct gntdev_priv *priv = file->private_data;

 pr_debug("gntdev_vma_close %p\n", vma);
 if (use_ptemod) {







  mutex_lock(&priv->lock);
  map->vma = ((void*)0);
  mutex_unlock(&priv->lock);
 }
 vma->vm_private_data = ((void*)0);
 gntdev_put_map(priv, map);
}
