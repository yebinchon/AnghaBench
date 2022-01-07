
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int THIS_MODULE ;
 int atomic_dec (int *) ;
 int con_debug_leave () ;
 scalar_t__ dbg_restore_graphics ;
 int ignore_console_lock_warning ;
 int kgdb_connected ;
 int kgdboc_restore_input () ;
 scalar_t__ kgdboc_use_kms ;
 int module_put (int ) ;

__attribute__((used)) static void kgdboc_post_exp_handler(void)
{
 atomic_dec(&ignore_console_lock_warning);


 if (!kgdb_connected)
  module_put(THIS_MODULE);
 if (kgdboc_use_kms && dbg_restore_graphics) {
  dbg_restore_graphics = 0;
  con_debug_leave();
 }
 kgdboc_restore_input();
}
