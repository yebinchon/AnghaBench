
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct uart_port {int dummy; } ;


 int SPRD_CTL1 ;
 int SPRD_LOOPBACK_EN ;
 unsigned int TIOCM_LOOP ;
 int serial_in (struct uart_port*,int ) ;
 int serial_out (struct uart_port*,int ,int ) ;

__attribute__((used)) static void sprd_set_mctrl(struct uart_port *port, unsigned int mctrl)
{
 u32 val = serial_in(port, SPRD_CTL1);

 if (mctrl & TIOCM_LOOP)
  val |= SPRD_LOOPBACK_EN;
 else
  val &= ~SPRD_LOOPBACK_EN;

 serial_out(port, SPRD_CTL1, val);
}
