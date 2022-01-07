
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int opcode; int uid; int pgid; int pid; } ;
union inputArgs {TYPE_1__ ih; } ;


 int ENOMEM ;
 void* ERR_PTR (int ) ;
 int GFP_KERNEL ;
 int current ;
 int current_fsuid () ;
 int from_kuid (int *,int ) ;
 int init_pid_ns ;
 int init_user_ns ;
 union inputArgs* kvzalloc (int,int ) ;
 int task_pgrp_nr_ns (int ,int *) ;
 int task_pid_nr_ns (int ,int *) ;

__attribute__((used)) static void *alloc_upcall(int opcode, int size)
{
 union inputArgs *inp;

 inp = kvzalloc(size, GFP_KERNEL);
        if (!inp)
  return ERR_PTR(-ENOMEM);

        inp->ih.opcode = opcode;
 inp->ih.pid = task_pid_nr_ns(current, &init_pid_ns);
 inp->ih.pgid = task_pgrp_nr_ns(current, &init_pid_ns);
 inp->ih.uid = from_kuid(&init_user_ns, current_fsuid());

 return (void*)inp;
}
