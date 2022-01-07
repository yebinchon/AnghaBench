
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct console {int dummy; } ;
struct TYPE_4__ {int (* enable_nmi ) (int) ;} ;
struct TYPE_3__ {int is_console; } ;


 TYPE_2__ arch_kgdb_ops ;
 TYPE_1__* dbg_io_ops ;
 int stub1 (int) ;

__attribute__((used)) static int kgdb_nmi_console_setup(struct console *co, char *options)
{
 arch_kgdb_ops.enable_nmi(1);






 dbg_io_ops->is_console = 1;

 return 0;
}
