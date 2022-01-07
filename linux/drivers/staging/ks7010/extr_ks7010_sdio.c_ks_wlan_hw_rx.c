
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef void* u16 ;
struct rx_device_buffer {void* size; int * data; } ;
struct TYPE_4__ {int confirm_wait; } ;
struct TYPE_3__ {size_t qtail; struct rx_device_buffer* rx_dev_buff; } ;
struct ks_wlan_private {int rx_bh_task; TYPE_2__ psstatus; int net_dev; TYPE_1__ rx_dev; } ;
struct hostif_hdr {int event; int size; } ;


 int DATA_WINDOW ;
 int DUMP_PREFIX_OFFSET ;
 int READ_STATUS_REG ;
 int REG_STATUS_IDLE ;
 int RX_DEVICE_BUFF_SIZE ;
 int atomic_dec (int *) ;
 scalar_t__ atomic_read (int *) ;
 int hif_align_size (size_t) ;
 int inc_rxqtail (struct ks_wlan_private*) ;
 scalar_t__ is_hif_conf (void*) ;
 int ks7010_sdio_read (struct ks_wlan_private*,int ,int *,int ) ;
 int ks7010_sdio_writeb (struct ks_wlan_private*,int ,int ) ;
 void* le16_to_cpu (int ) ;
 int netdev_dbg (int ,char*) ;
 int netdev_err (int ,char*) ;
 int print_hex_dump_bytes (char*,int ,int *,int) ;
 int rxq_count (struct ks_wlan_private*) ;
 int tasklet_schedule (int *) ;

__attribute__((used)) static void ks_wlan_hw_rx(struct ks_wlan_private *priv, size_t size)
{
 int ret;
 struct rx_device_buffer *rx_buffer;
 struct hostif_hdr *hdr;
 u16 event = 0;


 if (rxq_count(priv) >= (RX_DEVICE_BUFF_SIZE - 1)) {
  netdev_err(priv->net_dev, "rx buffer overflow\n");
  return;
 }
 rx_buffer = &priv->rx_dev.rx_dev_buff[priv->rx_dev.qtail];

 ret = ks7010_sdio_read(priv, DATA_WINDOW, &rx_buffer->data[0],
          hif_align_size(size));
 if (ret)
  return;


 if (size > 2046 || size == 0) {





  ret = ks7010_sdio_writeb(priv, READ_STATUS_REG, REG_STATUS_IDLE);
  if (ret)
   netdev_err(priv->net_dev, "write READ_STATUS_REG\n");


  return;
 }

 hdr = (struct hostif_hdr *)&rx_buffer->data[0];
 rx_buffer->size = le16_to_cpu(hdr->size) + sizeof(hdr->size);
 event = le16_to_cpu(hdr->event);
 inc_rxqtail(priv);

 ret = ks7010_sdio_writeb(priv, READ_STATUS_REG, REG_STATUS_IDLE);
 if (ret)
  netdev_err(priv->net_dev, "write READ_STATUS_REG\n");

 if (atomic_read(&priv->psstatus.confirm_wait) && is_hif_conf(event)) {
  netdev_dbg(priv->net_dev, "IS_HIF_CONF true !!\n");
  atomic_dec(&priv->psstatus.confirm_wait);
 }

 tasklet_schedule(&priv->rx_bh_task);
}
