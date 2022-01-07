
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int flags; int index; } ;


 int CON_ENABLED ;
 TYPE_1__ hvc_console ;
 int register_console (TYPE_1__*) ;

__attribute__((used)) static void hvc_check_console(int index)
{

 if (hvc_console.flags & CON_ENABLED)
  return;





 if (index == hvc_console.index)
  register_console(&hvc_console);
}
