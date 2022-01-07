
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct nfcmrvl_spi_drv_data {TYPE_1__* spi; int priv; int nci_spi; int handshake_completion; int flags; } ;
typedef int irqreturn_t ;
struct TYPE_2__ {int dev; } ;


 int IRQ_HANDLED ;
 int SPI_WAIT_HANDSHAKE ;
 int complete (int *) ;
 struct sk_buff* nci_spi_read (int ) ;
 int nfc_err (int *,char*) ;
 scalar_t__ nfcmrvl_nci_recv_frame (int ,struct sk_buff*) ;
 scalar_t__ test_and_clear_bit (int ,int *) ;

__attribute__((used)) static irqreturn_t nfcmrvl_spi_int_irq_thread_fn(int irq, void *drv_data_ptr)
{
 struct nfcmrvl_spi_drv_data *drv_data = drv_data_ptr;
 struct sk_buff *skb;





 if (test_and_clear_bit(SPI_WAIT_HANDSHAKE, &drv_data->flags)) {
  complete(&drv_data->handshake_completion);
  return IRQ_HANDLED;
 }



 skb = nci_spi_read(drv_data->nci_spi);
 if (!skb) {
  nfc_err(&drv_data->spi->dev, "failed to read spi packet");
  return IRQ_HANDLED;
 }

 if (nfcmrvl_nci_recv_frame(drv_data->priv, skb) < 0)
  nfc_err(&drv_data->spi->dev, "corrupted RX packet");

 return IRQ_HANDLED;
}
