
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mmp_path {int overlay_num; int access_ok; TYPE_1__* overlays; int node; } ;
struct TYPE_2__ {int access_ok; } ;


 int disp_lock ;
 int kfree (struct mmp_path*) ;
 int list_del (int *) ;
 int mutex_destroy (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

void mmp_unregister_path(struct mmp_path *path)
{
 int i;

 if (!path)
  return;

 mutex_lock(&disp_lock);

 list_del(&path->node);


 for (i = 0; i < path->overlay_num; i++)
  mutex_destroy(&path->overlays[i].access_ok);

 mutex_destroy(&path->access_ok);

 kfree(path);
 mutex_unlock(&disp_lock);
}
