
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int rx; } ;
struct TYPE_6__ {int lock; TYPE_1__* state; TYPE_2__ icount; } ;
struct sifive_serial_port {TYPE_3__ port; } ;
struct TYPE_4__ {int port; } ;


 int SIFIVE_RX_FIFO_DEPTH ;
 int TTY_NORMAL ;
 unsigned char __ssp_receive_char (struct sifive_serial_port*,char*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int tty_flip_buffer_push (int *) ;
 int uart_insert_char (TYPE_3__*,int ,int ,unsigned char,int ) ;

__attribute__((used)) static void __ssp_receive_chars(struct sifive_serial_port *ssp)
{
 unsigned char ch;
 char is_empty;
 int c;

 for (c = SIFIVE_RX_FIFO_DEPTH; c > 0; --c) {
  ch = __ssp_receive_char(ssp, &is_empty);
  if (is_empty)
   break;

  ssp->port.icount.rx++;
  uart_insert_char(&ssp->port, 0, 0, ch, TTY_NORMAL);
 }

 spin_unlock(&ssp->port.lock);
 tty_flip_buffer_push(&ssp->port.state->port);
 spin_lock(&ssp->port.lock);
}
