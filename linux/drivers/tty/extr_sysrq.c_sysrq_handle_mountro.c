
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int emergency_remount () ;

__attribute__((used)) static void sysrq_handle_mountro(int key)
{
 emergency_remount();
}
