
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wilc_vif {int dummy; } ;
struct wilc {int vif_num; int vif_mutex; struct wilc_vif** vif; } ;


 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

struct wilc_vif *wilc_get_interface(struct wilc *wl)
{
 int i;
 struct wilc_vif *vif = ((void*)0);

 mutex_lock(&wl->vif_mutex);
 for (i = 0; i < wl->vif_num; i++) {
  if (wl->vif[i]) {
   vif = wl->vif[i];
   break;
  }
 }
 mutex_unlock(&wl->vif_mutex);
 return vif;
}
