
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wilc {int vif_num; int vif_mutex; TYPE_1__** vif; } ;
struct TYPE_2__ {int iftype; } ;


 int EINVAL ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int wilc_get_vif_from_type(struct wilc *wl, int type)
{
 int i;

 mutex_lock(&wl->vif_mutex);
 for (i = 0; i < wl->vif_num; i++) {
  if (wl->vif[i]->iftype == type) {
   mutex_unlock(&wl->vif_mutex);
   return i;
  }
 }
 mutex_unlock(&wl->vif_mutex);

 return -EINVAL;
}
