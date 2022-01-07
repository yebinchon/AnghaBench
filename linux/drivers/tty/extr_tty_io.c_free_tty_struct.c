
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty_struct {int magic; struct tty_struct* write_buf; int dev; } ;


 int kfree (struct tty_struct*) ;
 int put_device (int ) ;
 int tty_ldisc_deinit (struct tty_struct*) ;

__attribute__((used)) static void free_tty_struct(struct tty_struct *tty)
{
 tty_ldisc_deinit(tty);
 put_device(tty->dev);
 kfree(tty->write_buf);
 tty->magic = 0xDEADDEAD;
 kfree(tty);
}
