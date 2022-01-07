
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct afs_net {int proc_cells_lock; } ;
struct afs_cell {int * cache; int proc_link; int name; } ;


 int _enter (char*,int ) ;
 int _leave (char*) ;
 int afs_dynroot_rmdir (struct afs_net*,struct afs_cell*) ;
 int afs_proc_cell_remove (struct afs_cell*) ;
 int fscache_relinquish_cookie (int *,int *,int) ;
 int hlist_del_rcu (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static void afs_deactivate_cell(struct afs_net *net, struct afs_cell *cell)
{
 _enter("%s", cell->name);

 afs_proc_cell_remove(cell);

 mutex_lock(&net->proc_cells_lock);
 hlist_del_rcu(&cell->proc_link);
 afs_dynroot_rmdir(net, cell);
 mutex_unlock(&net->proc_cells_lock);






 _leave("");
}
