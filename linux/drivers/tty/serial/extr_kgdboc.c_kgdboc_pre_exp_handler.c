
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int d; } ;


 int THIS_MODULE ;
 int atomic_inc (int *) ;
 int con_debug_enter (int ) ;
 int dbg_restore_graphics ;
 size_t fg_console ;
 int ignore_console_lock_warning ;
 int kgdb_connected ;
 scalar_t__ kgdboc_use_kms ;
 int try_module_get (int ) ;
 TYPE_1__* vc_cons ;

__attribute__((used)) static void kgdboc_pre_exp_handler(void)
{
 if (!dbg_restore_graphics && kgdboc_use_kms) {
  dbg_restore_graphics = 1;
  con_debug_enter(vc_cons[fg_console].d);
 }

 if (!kgdb_connected)
  try_module_get(THIS_MODULE);

 atomic_inc(&ignore_console_lock_warning);
}
