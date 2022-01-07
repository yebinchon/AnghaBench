
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int nci_uart_unregister (int *) ;
 int nfcmrvl_nci_uart ;

__attribute__((used)) static void nfcmrvl_uart_exit_module(void)
{
 nci_uart_unregister(&nfcmrvl_nci_uart);
}
