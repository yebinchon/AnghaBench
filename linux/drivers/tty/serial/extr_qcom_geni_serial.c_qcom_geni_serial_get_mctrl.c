
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct uart_port {scalar_t__ membase; } ;


 int IO2_DATA_IN ;
 scalar_t__ SE_GENI_IOS ;
 unsigned int TIOCM_CAR ;
 unsigned int TIOCM_CTS ;
 unsigned int TIOCM_DSR ;
 int readl (scalar_t__) ;
 scalar_t__ uart_console (struct uart_port*) ;

__attribute__((used)) static unsigned int qcom_geni_serial_get_mctrl(struct uart_port *uport)
{
 unsigned int mctrl = TIOCM_DSR | TIOCM_CAR;
 u32 geni_ios;

 if (uart_console(uport)) {
  mctrl |= TIOCM_CTS;
 } else {
  geni_ios = readl(uport->membase + SE_GENI_IOS);
  if (!(geni_ios & IO2_DATA_IN))
   mctrl |= TIOCM_CTS;
 }

 return mctrl;
}
