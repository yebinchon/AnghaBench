
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vc_data {int dummy; } ;
struct TYPE_2__ {int lock; int * pid; int sig; } ;


 scalar_t__ kill_pid (int *,int ,int) ;
 int put_pid (int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 TYPE_1__ vt_spawn_con ;

__attribute__((used)) static void fn_spawn_con(struct vc_data *vc)
{
 spin_lock(&vt_spawn_con.lock);
 if (vt_spawn_con.pid)
  if (kill_pid(vt_spawn_con.pid, vt_spawn_con.sig, 1)) {
   put_pid(vt_spawn_con.pid);
   vt_spawn_con.pid = ((void*)0);
  }
 spin_unlock(&vt_spawn_con.lock);
}
