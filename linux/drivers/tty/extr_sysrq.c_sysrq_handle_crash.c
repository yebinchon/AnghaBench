
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int panic (char*) ;
 int rcu_read_unlock () ;

__attribute__((used)) static void sysrq_handle_crash(int key)
{

 rcu_read_unlock();

 panic("sysrq triggered crash\n");
}
