
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty_struct {struct gsm_dlci* driver_data; } ;
struct gsm_dlci {scalar_t__ state; int lock; int fifo; } ;


 scalar_t__ DLCI_CLOSED ;
 int EINVAL ;
 int gsm_dlci_data_kick (struct gsm_dlci*) ;
 int kfifo_in_locked (int ,unsigned char const*,int,int *) ;

__attribute__((used)) static int gsmtty_write(struct tty_struct *tty, const unsigned char *buf,
            int len)
{
 int sent;
 struct gsm_dlci *dlci = tty->driver_data;
 if (dlci->state == DLCI_CLOSED)
  return -EINVAL;

 sent = kfifo_in_locked(dlci->fifo, buf, len, &dlci->lock);

 gsm_dlci_data_kick(dlci);
 return sent;
}
