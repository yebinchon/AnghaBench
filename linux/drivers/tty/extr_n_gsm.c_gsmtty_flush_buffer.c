
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty_struct {struct gsm_dlci* driver_data; } ;
struct gsm_dlci {scalar_t__ state; int fifo; } ;


 scalar_t__ DLCI_CLOSED ;
 int kfifo_reset (int ) ;

__attribute__((used)) static void gsmtty_flush_buffer(struct tty_struct *tty)
{
 struct gsm_dlci *dlci = tty->driver_data;
 if (dlci->state == DLCI_CLOSED)
  return;




 kfifo_reset(dlci->fifo);

}
