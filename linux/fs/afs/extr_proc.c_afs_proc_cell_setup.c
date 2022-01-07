
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_net_private {int dummy; } ;
struct proc_dir_entry {int dummy; } ;
struct afs_vl_seq_net_private {int dummy; } ;
struct afs_net {int proc_afs; int net; } ;
struct afs_cell {int name; struct afs_net* net; } ;


 int ENOMEM ;
 int _enter (char*,struct afs_cell*,int ,int ) ;
 int _leave (char*) ;
 int afs_proc_cell_vlservers_ops ;
 int afs_proc_cell_volumes_ops ;
 int proc_create_net_data (char*,int,struct proc_dir_entry*,int *,int,struct afs_cell*) ;
 struct proc_dir_entry* proc_net_mkdir (int ,int ,int ) ;
 int remove_proc_subtree (int ,int ) ;

int afs_proc_cell_setup(struct afs_cell *cell)
{
 struct proc_dir_entry *dir;
 struct afs_net *net = cell->net;

 _enter("%p{%s},%p", cell, cell->name, net->proc_afs);

 dir = proc_net_mkdir(net->net, cell->name, net->proc_afs);
 if (!dir)
  goto error_dir;

 if (!proc_create_net_data("vlservers", 0444, dir,
      &afs_proc_cell_vlservers_ops,
      sizeof(struct afs_vl_seq_net_private),
      cell) ||
     !proc_create_net_data("volumes", 0444, dir,
      &afs_proc_cell_volumes_ops,
      sizeof(struct seq_net_private),
      cell))
  goto error_tree;

 _leave(" = 0");
 return 0;

error_tree:
 remove_proc_subtree(cell->name, net->proc_afs);
error_dir:
 _leave(" = -ENOMEM");
 return -ENOMEM;
}
