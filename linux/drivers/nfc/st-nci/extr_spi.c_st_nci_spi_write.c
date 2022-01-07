
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct st_nci_spi_phy {TYPE_1__* ndlc; struct spi_device* spi_dev; } ;
struct spi_transfer {int len; int * rx_buf; int tx_buf; } ;
struct spi_device {int dummy; } ;
struct sk_buff {int len; int data; } ;
struct TYPE_2__ {scalar_t__ hard_fault; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int NCI_DATA_HDR_SIZE ;
 int ST_NCI_FRAME_HEADROOM ;
 int ST_NCI_FRAME_TAILROOM ;
 int ST_NCI_SPI_MAX_SIZE ;
 struct sk_buff* alloc_skb (int ,int ) ;
 int memcpy (int ,int *,int ) ;
 int ndlc_recv (TYPE_1__*,struct sk_buff*) ;
 int skb_put (struct sk_buff*,int ) ;
 int spi_sync_transfer (struct spi_device*,struct spi_transfer*,int) ;

__attribute__((used)) static int st_nci_spi_write(void *phy_id, struct sk_buff *skb)
{
 int r;
 struct st_nci_spi_phy *phy = phy_id;
 struct spi_device *dev = phy->spi_dev;
 struct sk_buff *skb_rx;
 u8 buf[ST_NCI_SPI_MAX_SIZE + NCI_DATA_HDR_SIZE +
        ST_NCI_FRAME_HEADROOM + ST_NCI_FRAME_TAILROOM];
 struct spi_transfer spi_xfer = {
  .tx_buf = skb->data,
  .rx_buf = buf,
  .len = skb->len,
 };

 if (phy->ndlc->hard_fault != 0)
  return phy->ndlc->hard_fault;

 r = spi_sync_transfer(dev, &spi_xfer, 1);




 if (!r) {
  skb_rx = alloc_skb(skb->len, GFP_KERNEL);
  if (!skb_rx) {
   r = -ENOMEM;
   goto exit;
  }

  skb_put(skb_rx, skb->len);
  memcpy(skb_rx->data, buf, skb->len);
  ndlc_recv(phy->ndlc, skb_rx);
 }

exit:
 return r;
}
