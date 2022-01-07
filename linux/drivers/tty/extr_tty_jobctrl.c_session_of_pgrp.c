
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int dummy; } ;
struct pid {int dummy; } ;


 int PIDTYPE_PGID ;
 int PIDTYPE_PID ;
 struct task_struct* pid_task (struct pid*,int ) ;
 struct pid* task_session (struct task_struct*) ;

__attribute__((used)) static struct pid *session_of_pgrp(struct pid *pgrp)
{
 struct task_struct *p;
 struct pid *sid = ((void*)0);

 p = pid_task(pgrp, PIDTYPE_PGID);
 if (p == ((void*)0))
  p = pid_task(pgrp, PIDTYPE_PID);
 if (p != ((void*)0))
  sid = task_session(p);

 return sid;
}
