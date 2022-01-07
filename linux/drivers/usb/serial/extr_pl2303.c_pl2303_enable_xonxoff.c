
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty_struct {int dummy; } ;
struct pl2303_type_data {scalar_t__ no_autoxonxoff; } ;


 scalar_t__ I_IXANY (struct tty_struct*) ;
 int I_IXON (struct tty_struct*) ;
 int START_CHAR (struct tty_struct*) ;
 int STOP_CHAR (struct tty_struct*) ;

__attribute__((used)) static bool pl2303_enable_xonxoff(struct tty_struct *tty, const struct pl2303_type_data *type)
{
 if (!I_IXON(tty) || I_IXANY(tty))
  return 0;

 if (START_CHAR(tty) != 0x11 || STOP_CHAR(tty) != 0x13)
  return 0;

 if (type->no_autoxonxoff)
  return 0;

 return 1;
}
