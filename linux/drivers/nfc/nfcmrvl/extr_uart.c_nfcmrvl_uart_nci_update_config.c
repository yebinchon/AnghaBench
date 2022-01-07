
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfcmrvl_private {struct nci_uart* drv_data; } ;
struct nfcmrvl_fw_uart_config {int flow_control; int baudrate; } ;
struct nci_uart {int dummy; } ;


 int le32_to_cpu (int ) ;
 int nci_uart_set_config (struct nci_uart*,int ,int ) ;

__attribute__((used)) static void nfcmrvl_uart_nci_update_config(struct nfcmrvl_private *priv,
        const void *param)
{
 struct nci_uart *nu = priv->drv_data;
 const struct nfcmrvl_fw_uart_config *config = param;

 nci_uart_set_config(nu, le32_to_cpu(config->baudrate),
       config->flow_control);
}
