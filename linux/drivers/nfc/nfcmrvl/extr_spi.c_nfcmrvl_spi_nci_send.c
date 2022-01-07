
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct nfcmrvl_spi_drv_data {int handshake_completion; int nci_spi; int flags; } ;
struct nfcmrvl_private {int dev; struct nfcmrvl_spi_drv_data* drv_data; } ;


 int SPI_WAIT_HANDSHAKE ;
 int nci_spi_send (int ,int *,struct sk_buff*) ;
 int nfc_err (int ,char*,int) ;
 int reinit_completion (int *) ;
 int set_bit (int ,int *) ;
 int skb_put (struct sk_buff*,int) ;

__attribute__((used)) static int nfcmrvl_spi_nci_send(struct nfcmrvl_private *priv,
    struct sk_buff *skb)
{
 struct nfcmrvl_spi_drv_data *drv_data = priv->drv_data;
 int err;


 reinit_completion(&drv_data->handshake_completion);
 set_bit(SPI_WAIT_HANDSHAKE, &drv_data->flags);





 skb_put(skb, 1);


 err = nci_spi_send(drv_data->nci_spi, &drv_data->handshake_completion,
      skb);
 if (err)
  nfc_err(priv->dev, "spi_send failed %d", err);

 return err;
}
