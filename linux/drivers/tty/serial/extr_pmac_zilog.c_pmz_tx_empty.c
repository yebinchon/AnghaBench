
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_port {int dummy; } ;


 unsigned int TIOCSER_TEMT ;
 unsigned char Tx_BUF_EMP ;
 unsigned char pmz_peek_status (int ) ;
 int to_pmz (struct uart_port*) ;

__attribute__((used)) static unsigned int pmz_tx_empty(struct uart_port *port)
{
 unsigned char status;

 status = pmz_peek_status(to_pmz(port));
 if (status & Tx_BUF_EMP)
  return TIOCSER_TEMT;
 return 0;
}
