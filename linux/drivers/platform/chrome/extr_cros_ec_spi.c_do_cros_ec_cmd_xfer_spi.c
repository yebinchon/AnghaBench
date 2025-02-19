
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u8 ;
typedef int trans ;
struct spi_transfer {scalar_t__* tx_buf; scalar_t__* rx_buf; int len; int cs_change; } ;
struct spi_message {int dummy; } ;
struct cros_ec_spi {unsigned long last_transfer_ns; TYPE_1__* spi; } ;
struct cros_ec_device {scalar_t__* dout; int dev; scalar_t__* din; struct cros_ec_spi* priv; } ;
struct cros_ec_command {int insize; scalar_t__ command; scalar_t__* data; scalar_t__ result; } ;
struct TYPE_2__ {int master; } ;


 int EAGAIN ;
 int EBADMSG ;
 scalar_t__ EC_CMD_REBOOT_EC ;
 scalar_t__ EC_MSG_TX_PROTO_BYTES ;
 int EC_REBOOT_DELAY_MS ;
 scalar_t__ EC_SPI_NOT_READY ;
 scalar_t__ EC_SPI_PAST_END ;
 unsigned long EC_SPI_RECOVERY_TIME_NS ;
 scalar_t__ EC_SPI_RX_BAD_DATA ;
 int ENOMEM ;
 int ENOSPC ;
 int GFP_KERNEL ;
 int cros_ec_check_result (struct cros_ec_device*,struct cros_ec_command*) ;
 int cros_ec_prepare_tx (struct cros_ec_device*,struct cros_ec_command*) ;
 int cros_ec_spi_receive_response (struct cros_ec_device*,scalar_t__) ;
 int debug_packet (int ,char*,scalar_t__*,int) ;
 int dev_dbg (int ,char*,int) ;
 int dev_err (int ,char*,int,...) ;
 int kfree (scalar_t__*) ;
 unsigned long ktime_get_ns () ;
 scalar_t__* kzalloc (int,int ) ;
 int memset (struct spi_transfer*,int ,int) ;
 int msleep (int ) ;
 int ndelay (unsigned long) ;
 int spi_bus_lock (int ) ;
 int spi_bus_unlock (int ) ;
 int spi_message_add_tail (struct spi_transfer*,struct spi_message*) ;
 int spi_message_init (struct spi_message*) ;
 int spi_sync_locked (TYPE_1__*,struct spi_message*) ;
 int terminate_request (struct cros_ec_device*) ;

__attribute__((used)) static int do_cros_ec_cmd_xfer_spi(struct cros_ec_device *ec_dev,
       struct cros_ec_command *ec_msg)
{
 struct cros_ec_spi *ec_spi = ec_dev->priv;
 struct spi_transfer trans;
 struct spi_message msg;
 int i, len;
 u8 *ptr;
 u8 *rx_buf;
 u8 rx_byte;
 int sum;
 int ret = 0, final_ret;
 unsigned long delay;

 len = cros_ec_prepare_tx(ec_dev, ec_msg);
 dev_dbg(ec_dev->dev, "prepared, len=%d\n", len);


 delay = ktime_get_ns() - ec_spi->last_transfer_ns;
 if (delay < EC_SPI_RECOVERY_TIME_NS)
  ndelay(EC_SPI_RECOVERY_TIME_NS - delay);

 rx_buf = kzalloc(len, GFP_KERNEL);
 if (!rx_buf)
  return -ENOMEM;

 spi_bus_lock(ec_spi->spi->master);


 debug_packet(ec_dev->dev, "out", ec_dev->dout, len);
 memset(&trans, 0, sizeof(trans));
 trans.tx_buf = ec_dev->dout;
 trans.rx_buf = rx_buf;
 trans.len = len;
 trans.cs_change = 1;
 spi_message_init(&msg);
 spi_message_add_tail(&trans, &msg);
 ret = spi_sync_locked(ec_spi->spi, &msg);


 if (!ret) {

  for (i = 0; i < len; i++) {
   rx_byte = rx_buf[i];

   if (rx_byte == EC_SPI_PAST_END ||
       rx_byte == EC_SPI_RX_BAD_DATA ||
       rx_byte == EC_SPI_NOT_READY) {
    ret = -EAGAIN;
    break;
   }
  }
 }

 if (!ret)
  ret = cros_ec_spi_receive_response(ec_dev,
    ec_msg->insize + EC_MSG_TX_PROTO_BYTES);
 else if (ret != -EAGAIN)
  dev_err(ec_dev->dev, "spi transfer failed: %d\n", ret);

 final_ret = terminate_request(ec_dev);

 spi_bus_unlock(ec_spi->spi->master);

 if (!ret)
  ret = final_ret;
 if (ret < 0)
  goto exit;

 ptr = ec_dev->din;


 ec_msg->result = ptr[0];
 ret = cros_ec_check_result(ec_dev, ec_msg);
 if (ret)
  goto exit;

 len = ptr[1];
 sum = ptr[0] + ptr[1];
 if (len > ec_msg->insize) {
  dev_err(ec_dev->dev, "packet too long (%d bytes, expected %d)",
   len, ec_msg->insize);
  ret = -ENOSPC;
  goto exit;
 }


 for (i = 0; i < len; i++) {
  sum += ptr[i + 2];
  if (ec_msg->insize)
   ec_msg->data[i] = ptr[i + 2];
 }
 sum &= 0xff;

 debug_packet(ec_dev->dev, "in", ptr, len + 3);

 if (sum != ptr[len + 2]) {
  dev_err(ec_dev->dev,
   "bad packet checksum, expected %02x, got %02x\n",
   sum, ptr[len + 2]);
  ret = -EBADMSG;
  goto exit;
 }

 ret = len;
exit:
 kfree(rx_buf);
 if (ec_msg->command == EC_CMD_REBOOT_EC)
  msleep(EC_REBOOT_DELAY_MS);

 return ret;
}
