
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty_struct {int name; struct serial_state* driver_data; } ;
struct serial_state {int MCR; } ;


 scalar_t__ C_CRTSCTS (struct tty_struct*) ;
 scalar_t__ I_IXOFF (struct tty_struct*) ;
 int SER_RTS ;
 int STOP_CHAR (struct tty_struct*) ;
 int local_irq_restore (unsigned long) ;
 int local_irq_save (unsigned long) ;
 int printk (char*,int ) ;
 int rs_send_xchar (struct tty_struct*,int ) ;
 int rtsdtr_ctrl (int ) ;
 scalar_t__ serial_paranoia_check (struct serial_state*,int ,char*) ;
 int tty_name (struct tty_struct*) ;

__attribute__((used)) static void rs_throttle(struct tty_struct * tty)
{
 struct serial_state *info = tty->driver_data;
 unsigned long flags;




 if (serial_paranoia_check(info, tty->name, "rs_throttle"))
  return;

 if (I_IXOFF(tty))
  rs_send_xchar(tty, STOP_CHAR(tty));

 if (C_CRTSCTS(tty))
  info->MCR &= ~SER_RTS;

 local_irq_save(flags);
 rtsdtr_ctrl(info->MCR);
 local_irq_restore(flags);
}
