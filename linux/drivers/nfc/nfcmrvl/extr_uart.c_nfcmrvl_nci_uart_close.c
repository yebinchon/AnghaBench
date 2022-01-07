
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfcmrvl_private {int dummy; } ;
struct nci_uart {scalar_t__ drv_data; } ;


 int nfcmrvl_nci_unregister_dev (struct nfcmrvl_private*) ;

__attribute__((used)) static void nfcmrvl_nci_uart_close(struct nci_uart *nu)
{
 nfcmrvl_nci_unregister_dev((struct nfcmrvl_private *)nu->drv_data);
}
