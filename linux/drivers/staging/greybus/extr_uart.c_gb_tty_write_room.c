
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty_struct {struct gb_tty* driver_data; } ;
struct gb_tty {int write_lock; int write_fifo; } ;


 scalar_t__ GB_UART_WRITE_ROOM_MARGIN ;
 int kfifo_avail (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int gb_tty_write_room(struct tty_struct *tty)
{
 struct gb_tty *gb_tty = tty->driver_data;
 unsigned long flags;
 int room;

 spin_lock_irqsave(&gb_tty->write_lock, flags);
 room = kfifo_avail(&gb_tty->write_fifo);
 spin_unlock_irqrestore(&gb_tty->write_lock, flags);

 room -= GB_UART_WRITE_ROOM_MARGIN;
 if (room < 0)
  return 0;

 return room;
}
