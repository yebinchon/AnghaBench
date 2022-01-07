
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_file {int dummy; } ;
struct afs_net {int n_store_bytes; int n_stores; int n_fetch_bytes; int n_fetches; int n_dir_rm; int n_dir_cr; int n_read_dir; int n_relpg; int n_inval; int n_reval; int n_lookup; } ;


 struct afs_net* afs_seq2net_single (struct seq_file*) ;
 int atomic_long_read (int *) ;
 int atomic_read (int *) ;
 int seq_printf (struct seq_file*,char*,int ,...) ;
 int seq_puts (struct seq_file*,char*) ;

__attribute__((used)) static int afs_proc_stats_show(struct seq_file *m, void *v)
{
 struct afs_net *net = afs_seq2net_single(m);

 seq_puts(m, "kAFS statistics\n");

 seq_printf(m, "dir-mgmt: look=%u reval=%u inval=%u relpg=%u\n",
     atomic_read(&net->n_lookup),
     atomic_read(&net->n_reval),
     atomic_read(&net->n_inval),
     atomic_read(&net->n_relpg));

 seq_printf(m, "dir-data: rdpg=%u\n",
     atomic_read(&net->n_read_dir));

 seq_printf(m, "dir-edit: cr=%u rm=%u\n",
     atomic_read(&net->n_dir_cr),
     atomic_read(&net->n_dir_rm));

 seq_printf(m, "file-rd : n=%u nb=%lu\n",
     atomic_read(&net->n_fetches),
     atomic_long_read(&net->n_fetch_bytes));
 seq_printf(m, "file-wr : n=%u nb=%lu\n",
     atomic_read(&net->n_stores),
     atomic_long_read(&net->n_store_bytes));
 return 0;
}
