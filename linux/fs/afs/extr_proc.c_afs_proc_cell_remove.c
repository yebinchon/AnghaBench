
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct afs_net {int proc_afs; } ;
struct afs_cell {int name; struct afs_net* net; } ;


 int _enter (char*) ;
 int _leave (char*) ;
 int remove_proc_subtree (int ,int ) ;

void afs_proc_cell_remove(struct afs_cell *cell)
{
 struct afs_net *net = cell->net;

 _enter("");
 remove_proc_subtree(cell->name, net->proc_afs);
 _leave("");
}
