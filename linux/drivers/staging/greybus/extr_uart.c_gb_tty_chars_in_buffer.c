
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty_struct {struct gb_tty* driver_data; } ;
struct gb_tty {scalar_t__ credits; int write_lock; int write_fifo; } ;


 scalar_t__ GB_UART_FIRMWARE_CREDITS ;
 int kfifo_len (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int gb_tty_chars_in_buffer(struct tty_struct *tty)
{
 struct gb_tty *gb_tty = tty->driver_data;
 unsigned long flags;
 int chars;

 spin_lock_irqsave(&gb_tty->write_lock, flags);
 chars = kfifo_len(&gb_tty->write_fifo);
 if (gb_tty->credits < GB_UART_FIRMWARE_CREDITS)
  chars += GB_UART_FIRMWARE_CREDITS - gb_tty->credits;
 spin_unlock_irqrestore(&gb_tty->write_lock, flags);

 return chars;
}
