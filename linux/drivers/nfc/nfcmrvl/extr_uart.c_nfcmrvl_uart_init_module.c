
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int nci_uart_register (int *) ;
 int nfcmrvl_nci_uart ;

__attribute__((used)) static int nfcmrvl_uart_init_module(void)
{
 return nci_uart_register(&nfcmrvl_nci_uart);
}
