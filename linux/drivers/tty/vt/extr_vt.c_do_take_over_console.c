
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct consw {int dummy; } ;


 int EBUSY ;
 int do_bind_con_driver (struct consw const*,int,int,int) ;
 int do_register_con_driver (struct consw const*,int,int) ;

int do_take_over_console(const struct consw *csw, int first, int last, int deflt)
{
 int err;

 err = do_register_con_driver(csw, first, last);





 if (err == -EBUSY)
  err = 0;
 if (!err)
  do_bind_con_driver(csw, first, last, deflt);

 return err;
}
