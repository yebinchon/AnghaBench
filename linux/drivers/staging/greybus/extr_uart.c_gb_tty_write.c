
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty_struct {struct gb_tty* driver_data; } ;
struct gb_tty {int tx_work; int close_pending; int write_lock; int write_fifo; } ;


 int kfifo_in_spinlocked (int *,unsigned char const*,int,int *) ;
 int schedule_work (int *) ;

__attribute__((used)) static int gb_tty_write(struct tty_struct *tty, const unsigned char *buf,
   int count)
{
 struct gb_tty *gb_tty = tty->driver_data;

 count = kfifo_in_spinlocked(&gb_tty->write_fifo, buf, count,
         &gb_tty->write_lock);
 if (count && !gb_tty->close_pending)
  schedule_work(&gb_tty->tx_work);

 return count;
}
