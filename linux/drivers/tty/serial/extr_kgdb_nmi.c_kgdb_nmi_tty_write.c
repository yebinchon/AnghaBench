
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int unchar ;
struct tty_struct {int dummy; } ;
struct TYPE_2__ {int (* write_char ) (int const) ;} ;


 TYPE_1__* dbg_io_ops ;
 int stub1 (int const) ;

__attribute__((used)) static int kgdb_nmi_tty_write(struct tty_struct *tty, const unchar *buf, int c)
{
 int i;

 for (i = 0; i < c; i++)
  dbg_io_ops->write_char(buf[i]);
 return c;
}
