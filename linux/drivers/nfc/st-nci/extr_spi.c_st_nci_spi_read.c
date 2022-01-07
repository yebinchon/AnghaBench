
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct st_nci_spi_phy {TYPE_1__* ndlc; struct spi_device* spi_dev; } ;
struct spi_transfer {int* rx_buf; int len; } ;
struct spi_device {int dev; } ;
struct sk_buff {int data; } ;
typedef int __be16 ;
struct TYPE_2__ {int hard_fault; } ;


 int EBADMSG ;
 int ENOMEM ;
 int EREMOTEIO ;
 int GFP_KERNEL ;
 int ST_NCI_SPI_MAX_SIZE ;
 int ST_NCI_SPI_MIN_SIZE ;
 struct sk_buff* alloc_skb (int,int ) ;
 int be16_to_cpu (int ) ;
 int kfree_skb (struct sk_buff*) ;
 int memcpy (int,int*,int) ;
 int nfc_err (int *,char*) ;
 int skb_put (struct sk_buff*,int) ;
 int skb_reserve (struct sk_buff*,int) ;
 int spi_sync_transfer (struct spi_device*,struct spi_transfer*,int) ;

__attribute__((used)) static int st_nci_spi_read(struct st_nci_spi_phy *phy,
   struct sk_buff **skb)
{
 int r;
 u8 len;
 u8 buf[ST_NCI_SPI_MAX_SIZE];
 struct spi_device *dev = phy->spi_dev;
 struct spi_transfer spi_xfer = {
  .rx_buf = buf,
  .len = ST_NCI_SPI_MIN_SIZE,
 };

 r = spi_sync_transfer(dev, &spi_xfer, 1);
 if (r < 0)
  return -EREMOTEIO;

 len = be16_to_cpu(*(__be16 *) (buf + 2));
 if (len > ST_NCI_SPI_MAX_SIZE) {
  nfc_err(&dev->dev, "invalid frame len\n");
  phy->ndlc->hard_fault = 1;
  return -EBADMSG;
 }

 *skb = alloc_skb(ST_NCI_SPI_MIN_SIZE + len, GFP_KERNEL);
 if (*skb == ((void*)0))
  return -ENOMEM;

 skb_reserve(*skb, ST_NCI_SPI_MIN_SIZE);
 skb_put(*skb, ST_NCI_SPI_MIN_SIZE);
 memcpy((*skb)->data, buf, ST_NCI_SPI_MIN_SIZE);

 if (!len)
  return 0;

 spi_xfer.len = len;
 r = spi_sync_transfer(dev, &spi_xfer, 1);
 if (r < 0) {
  kfree_skb(*skb);
  return -EREMOTEIO;
 }

 skb_put(*skb, len);
 memcpy((*skb)->data + ST_NCI_SPI_MIN_SIZE, buf, len);

 return 0;
}
