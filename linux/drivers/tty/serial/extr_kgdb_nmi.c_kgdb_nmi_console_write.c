
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint ;
struct console {int dummy; } ;
struct TYPE_2__ {int (* write_char ) (char const) ;} ;


 TYPE_1__* dbg_io_ops ;
 int stub1 (char const) ;

__attribute__((used)) static void kgdb_nmi_console_write(struct console *co, const char *s, uint c)
{
 int i;

 for (i = 0; i < c; i++)
  dbg_io_ops->write_char(s[i]);
}
