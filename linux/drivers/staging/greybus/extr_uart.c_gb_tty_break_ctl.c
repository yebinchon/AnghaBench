
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty_struct {struct gb_tty* driver_data; } ;
struct gb_tty {int dummy; } ;


 int send_break (struct gb_tty*,int) ;

__attribute__((used)) static int gb_tty_break_ctl(struct tty_struct *tty, int state)
{
 struct gb_tty *gb_tty = tty->driver_data;

 return send_break(gb_tty, state ? 1 : 0);
}
