
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gntdev_priv {int lock; } ;
struct gntdev_grant_map {int next; } ;


 int gntdev_put_map (int *,struct gntdev_grant_map*) ;
 int list_del (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static void dmabuf_exp_remove_map(struct gntdev_priv *priv,
      struct gntdev_grant_map *map)
{
 mutex_lock(&priv->lock);
 list_del(&map->next);
 gntdev_put_map(((void*)0) , map);
 mutex_unlock(&priv->lock);
}
