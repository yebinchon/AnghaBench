
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct seq_net_private {int dummy; } ;
struct proc_dir_entry {int dummy; } ;
struct afs_net {struct proc_dir_entry* proc_afs; TYPE_1__* net; } ;
struct TYPE_2__ {int proc_net; } ;


 int ENOMEM ;
 int _enter (char*) ;
 int _leave (char*) ;
 int afs_proc_cells_ops ;
 int afs_proc_cells_write ;
 int afs_proc_rootcell_show ;
 int afs_proc_rootcell_write ;
 int afs_proc_servers_ops ;
 int afs_proc_stats_show ;
 int afs_proc_sysname_ops ;
 int afs_proc_sysname_write ;
 int proc_create_net (char*,int,struct proc_dir_entry*,int *,int) ;
 int proc_create_net_data_write (char*,int,struct proc_dir_entry*,int *,int ,int,int *) ;
 int proc_create_net_single (char*,int,struct proc_dir_entry*,int ,int *) ;
 int proc_create_net_single_write (char*,int,struct proc_dir_entry*,int ,int ,int *) ;
 struct proc_dir_entry* proc_net_mkdir (TYPE_1__*,char*,int ) ;
 int proc_remove (struct proc_dir_entry*) ;

int afs_proc_init(struct afs_net *net)
{
 struct proc_dir_entry *p;

 _enter("");

 p = proc_net_mkdir(net->net, "afs", net->net->proc_net);
 if (!p)
  goto error_dir;

 if (!proc_create_net_data_write("cells", 0644, p,
     &afs_proc_cells_ops,
     afs_proc_cells_write,
     sizeof(struct seq_net_private),
     ((void*)0)) ||
     !proc_create_net_single_write("rootcell", 0644, p,
       afs_proc_rootcell_show,
       afs_proc_rootcell_write,
       ((void*)0)) ||
     !proc_create_net("servers", 0444, p, &afs_proc_servers_ops,
        sizeof(struct seq_net_private)) ||
     !proc_create_net_single("stats", 0444, p, afs_proc_stats_show, ((void*)0)) ||
     !proc_create_net_data_write("sysname", 0644, p,
     &afs_proc_sysname_ops,
     afs_proc_sysname_write,
     sizeof(struct seq_net_private),
     ((void*)0)))
  goto error_tree;

 net->proc_afs = p;
 _leave(" = 0");
 return 0;

error_tree:
 proc_remove(p);
error_dir:
 _leave(" = -ENOMEM");
 return -ENOMEM;
}
