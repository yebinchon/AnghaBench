
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_file {int dummy; } ;
struct afs_sysnames {unsigned int nr; int * subs; } ;
struct afs_net {struct afs_sysnames* sysnames; } ;


 struct afs_net* afs_seq2net (struct seq_file*) ;
 int seq_printf (struct seq_file*,char*,int ) ;

__attribute__((used)) static int afs_proc_sysname_show(struct seq_file *m, void *v)
{
 struct afs_net *net = afs_seq2net(m);
 struct afs_sysnames *sysnames = net->sysnames;
 unsigned int i = (unsigned long)v - 1;

 if (i < sysnames->nr)
  seq_printf(m, "%s\n", sysnames->subs[i]);
 return 0;
}
