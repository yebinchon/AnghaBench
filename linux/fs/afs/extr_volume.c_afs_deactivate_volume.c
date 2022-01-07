
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct afs_volume {int * cache; int flags; TYPE_1__* cell; int proc_link; int name; } ;
struct TYPE_2__ {int proc_lock; } ;


 int AFS_VOLUME_DELETED ;
 int _enter (char*,int ) ;
 int _leave (char*) ;
 int fscache_relinquish_cookie (int *,int *,int ) ;
 int list_del_init (int *) ;
 int test_bit (int ,int *) ;
 int write_lock (int *) ;
 int write_unlock (int *) ;

void afs_deactivate_volume(struct afs_volume *volume)
{
 _enter("%s", volume->name);

 write_lock(&volume->cell->proc_lock);
 list_del_init(&volume->proc_link);
 write_unlock(&volume->cell->proc_lock);







 _leave("");
}
