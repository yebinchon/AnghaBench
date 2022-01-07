
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int (* enable_nmi ) (int ) ;} ;


 TYPE_1__ arch_kgdb_ops ;
 int kgdb_nmi_console ;
 int kgdb_nmi_tty_driver ;
 int put_tty_driver (int ) ;
 int stub1 (int ) ;
 int tty_unregister_driver (int ) ;
 int unregister_console (int *) ;

int kgdb_unregister_nmi_console(void)
{
 int ret;

 if (!arch_kgdb_ops.enable_nmi)
  return 0;
 arch_kgdb_ops.enable_nmi(0);

 ret = unregister_console(&kgdb_nmi_console);
 if (ret)
  return ret;

 ret = tty_unregister_driver(kgdb_nmi_tty_driver);
 if (ret)
  return ret;
 put_tty_driver(kgdb_nmi_tty_driver);

 return 0;
}
