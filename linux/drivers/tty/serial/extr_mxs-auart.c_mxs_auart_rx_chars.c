
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_4__ {TYPE_1__* state; } ;
struct mxs_auart_port {TYPE_2__ port; } ;
struct TYPE_3__ {int port; } ;


 int AUART_STAT_RXFE ;
 int REG_STAT ;
 int mxs_auart_rx_char (struct mxs_auart_port*) ;
 int mxs_read (struct mxs_auart_port*,int ) ;
 int mxs_write (int,struct mxs_auart_port*,int ) ;
 int tty_flip_buffer_push (int *) ;

__attribute__((used)) static void mxs_auart_rx_chars(struct mxs_auart_port *s)
{
 u32 stat = 0;

 for (;;) {
  stat = mxs_read(s, REG_STAT);
  if (stat & AUART_STAT_RXFE)
   break;
  mxs_auart_rx_char(s);
 }

 mxs_write(stat, s, REG_STAT);
 tty_flip_buffer_push(&s->port.state->port);
}
