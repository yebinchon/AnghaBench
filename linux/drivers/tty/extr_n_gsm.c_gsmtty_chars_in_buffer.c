
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty_struct {struct gsm_dlci* driver_data; } ;
struct gsm_dlci {scalar_t__ state; int fifo; } ;


 scalar_t__ DLCI_CLOSED ;
 int EINVAL ;
 int kfifo_len (int ) ;

__attribute__((used)) static int gsmtty_chars_in_buffer(struct tty_struct *tty)
{
 struct gsm_dlci *dlci = tty->driver_data;
 if (dlci->state == DLCI_CLOSED)
  return -EINVAL;
 return kfifo_len(dlci->fifo);
}
