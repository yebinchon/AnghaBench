
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef void* u8 ;
typedef int u32 ;
struct TYPE_5__ {int overrun; int frame; int parity; int brk; int rx; } ;
struct TYPE_6__ {int read_status_mask; TYPE_1__ icount; } ;
struct mxs_auart_port {TYPE_2__ port; } ;


 int AUART_STAT_BERR ;
 int AUART_STAT_FERR ;
 int AUART_STAT_OERR ;
 int AUART_STAT_PERR ;
 int REG_DATA ;
 int REG_STAT ;
 int TTY_BREAK ;
 int TTY_FRAME ;
 int TTY_NORMAL ;
 int TTY_PARITY ;
 void* mxs_read (struct mxs_auart_port*,int ) ;
 int mxs_write (int,struct mxs_auart_port*,int ) ;
 scalar_t__ uart_handle_break (TYPE_2__*) ;
 scalar_t__ uart_handle_sysrq_char (TYPE_2__*,void*) ;
 int uart_insert_char (TYPE_2__*,int,int,void*,int) ;

__attribute__((used)) static void mxs_auart_rx_char(struct mxs_auart_port *s)
{
 int flag;
 u32 stat;
 u8 c;

 c = mxs_read(s, REG_DATA);
 stat = mxs_read(s, REG_STAT);

 flag = TTY_NORMAL;
 s->port.icount.rx++;

 if (stat & AUART_STAT_BERR) {
  s->port.icount.brk++;
  if (uart_handle_break(&s->port))
   goto out;
 } else if (stat & AUART_STAT_PERR) {
  s->port.icount.parity++;
 } else if (stat & AUART_STAT_FERR) {
  s->port.icount.frame++;
 }




 stat &= s->port.read_status_mask;

 if (stat & AUART_STAT_BERR) {
  flag = TTY_BREAK;
 } else if (stat & AUART_STAT_PERR)
  flag = TTY_PARITY;
 else if (stat & AUART_STAT_FERR)
  flag = TTY_FRAME;

 if (stat & AUART_STAT_OERR)
  s->port.icount.overrun++;

 if (uart_handle_sysrq_char(&s->port, c))
  goto out;

 uart_insert_char(&s->port, stat, AUART_STAT_OERR, c, flag);
out:
 mxs_write(stat, s, REG_STAT);
}
