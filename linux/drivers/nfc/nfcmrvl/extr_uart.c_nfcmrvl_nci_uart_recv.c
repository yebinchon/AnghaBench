
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct nfcmrvl_private {int dummy; } ;
struct nci_uart {scalar_t__ drv_data; } ;


 int nfcmrvl_nci_recv_frame (struct nfcmrvl_private*,struct sk_buff*) ;

__attribute__((used)) static int nfcmrvl_nci_uart_recv(struct nci_uart *nu, struct sk_buff *skb)
{
 return nfcmrvl_nci_recv_frame((struct nfcmrvl_private *)nu->drv_data,
          skb);
}
