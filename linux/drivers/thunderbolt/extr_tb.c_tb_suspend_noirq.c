
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tb_cm {int hotplug_active; } ;
struct tb {int root_switch; } ;


 int tb_dbg (struct tb*,char*) ;
 struct tb_cm* tb_priv (struct tb*) ;
 int tb_switch_suspend (int ) ;

__attribute__((used)) static int tb_suspend_noirq(struct tb *tb)
{
 struct tb_cm *tcm = tb_priv(tb);

 tb_dbg(tb, "suspending...\n");
 tb_switch_suspend(tb->root_switch);
 tcm->hotplug_active = 0;
 tb_dbg(tb, "suspend finished\n");

 return 0;
}
