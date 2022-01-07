
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct uart_8250_port {int dummy; } ;


 int pci_quatech_has_qmcr (struct uart_8250_port*) ;
 int pci_quatech_rqmcr (struct uart_8250_port*) ;
 int pci_quatech_wqmcr (struct uart_8250_port*,int) ;

__attribute__((used)) static int pci_quatech_rs422(struct uart_8250_port *port)
{
 u8 qmcr;
 int rs422 = 0;

 if (!pci_quatech_has_qmcr(port))
  return 0;
 qmcr = pci_quatech_rqmcr(port);
 pci_quatech_wqmcr(port, 0xFF);
 if (pci_quatech_rqmcr(port))
  rs422 = 1;
 pci_quatech_wqmcr(port, qmcr);
 return rs422;
}
