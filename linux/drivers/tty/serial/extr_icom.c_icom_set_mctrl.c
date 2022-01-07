
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct uart_port {int dummy; } ;
struct TYPE_5__ {TYPE_1__* dram; } ;
struct TYPE_4__ {int osr; } ;


 unsigned char ICOM_DTR ;
 TYPE_2__* ICOM_PORT ;
 unsigned char ICOM_RTS ;
 unsigned int TIOCM_DTR ;
 unsigned int TIOCM_RTS ;
 unsigned char readb (int *) ;
 int trace (TYPE_2__*,char*,int ) ;
 int writeb (unsigned char,int *) ;

__attribute__((used)) static void icom_set_mctrl(struct uart_port *port, unsigned int mctrl)
{
 unsigned char local_osr;

 trace(ICOM_PORT, "SET_MODEM", 0);
 local_osr = readb(&ICOM_PORT->dram->osr);

 if (mctrl & TIOCM_RTS) {
  trace(ICOM_PORT, "RAISE_RTS", 0);
  local_osr |= ICOM_RTS;
 } else {
  trace(ICOM_PORT, "LOWER_RTS", 0);
  local_osr &= ~ICOM_RTS;
 }

 if (mctrl & TIOCM_DTR) {
  trace(ICOM_PORT, "RAISE_DTR", 0);
  local_osr |= ICOM_DTR;
 } else {
  trace(ICOM_PORT, "LOWER_DTR", 0);
  local_osr &= ~ICOM_DTR;
 }

 writeb(local_osr, &ICOM_PORT->dram->osr);
}
