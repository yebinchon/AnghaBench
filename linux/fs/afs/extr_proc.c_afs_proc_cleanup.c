
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct afs_net {int * proc_afs; } ;


 int proc_remove (int *) ;

void afs_proc_cleanup(struct afs_net *net)
{
 proc_remove(net->proc_afs);
 net->proc_afs = ((void*)0);
}
