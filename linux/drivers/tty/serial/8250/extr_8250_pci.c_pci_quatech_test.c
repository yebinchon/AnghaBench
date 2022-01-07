
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct uart_8250_port {int dummy; } ;


 int EINVAL ;
 int QPCR_TEST_FOR1 ;
 int QPCR_TEST_FOR2 ;
 int QPCR_TEST_FOR3 ;
 int QPCR_TEST_FOR4 ;
 int QPCR_TEST_GET1 ;
 int QPCR_TEST_GET2 ;
 int QPCR_TEST_GET3 ;
 int QPCR_TEST_GET4 ;
 int pci_quatech_rqopr (struct uart_8250_port*) ;
 int pci_quatech_wqopr (struct uart_8250_port*,int) ;

__attribute__((used)) static int pci_quatech_test(struct uart_8250_port *port)
{
 u8 reg, qopr;

 qopr = pci_quatech_rqopr(port);
 pci_quatech_wqopr(port, qopr & QPCR_TEST_FOR1);
 reg = pci_quatech_rqopr(port) & 0xC0;
 if (reg != QPCR_TEST_GET1)
  return -EINVAL;
 pci_quatech_wqopr(port, (qopr & QPCR_TEST_FOR1)|QPCR_TEST_FOR2);
 reg = pci_quatech_rqopr(port) & 0xC0;
 if (reg != QPCR_TEST_GET2)
  return -EINVAL;
 pci_quatech_wqopr(port, (qopr & QPCR_TEST_FOR1)|QPCR_TEST_FOR3);
 reg = pci_quatech_rqopr(port) & 0xC0;
 if (reg != QPCR_TEST_GET3)
  return -EINVAL;
 pci_quatech_wqopr(port, (qopr & QPCR_TEST_FOR1)|QPCR_TEST_FOR4);
 reg = pci_quatech_rqopr(port) & 0xC0;
 if (reg != QPCR_TEST_GET4)
  return -EINVAL;

 pci_quatech_wqopr(port, qopr);
 return 0;
}
