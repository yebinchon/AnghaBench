
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct afs_volume {TYPE_1__* cell; int proc_link; int vid; int cache; } ;
struct TYPE_2__ {int proc_lock; int proc_volumes; int cache; } ;


 int afs_volume_cache_index_def ;
 int fscache_acquire_cookie (int ,int *,int *,int,int *,int ,struct afs_volume*,int ,int) ;
 int list_add_tail (int *,int *) ;
 int write_lock (int *) ;
 int write_unlock (int *) ;

void afs_activate_volume(struct afs_volume *volume)
{
 write_lock(&volume->cell->proc_lock);
 list_add_tail(&volume->proc_link, &volume->cell->proc_volumes);
 write_unlock(&volume->cell->proc_lock);
}
