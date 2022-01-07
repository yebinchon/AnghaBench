
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct afs_net {int cells_manager; int cells_outstanding; } ;


 int _enter (char*,int) ;
 int afs_dec_cells_outstanding (struct afs_net*) ;
 int afs_wq ;
 int atomic_inc_return (int *) ;
 int queue_work (int ,int *) ;

__attribute__((used)) static void afs_queue_cell_manager(struct afs_net *net)
{
 int outstanding = atomic_inc_return(&net->cells_outstanding);

 _enter("%d", outstanding);

 if (!queue_work(afs_wq, &net->cells_manager))
  afs_dec_cells_outstanding(net);
}
