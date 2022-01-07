
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u32 ;
struct spi_transfer {size_t tx_buf; size_t len; size_t speed_hz; size_t delay_usecs; scalar_t__ rx_buf; int bits_per_word; int cs_change; } ;
struct spi_message {scalar_t__ state; size_t actual_length; struct spi_device* spi; } ;
struct spi_device {int chip_select; int mode; } ;
struct gb_spilib {size_t tx_xfer_offset; size_t last_xfer_size; size_t rx_xfer_offset; unsigned int op_timeout; struct spi_transfer* last_xfer; struct spi_transfer* first_xfer; int parent; } ;
struct gb_spi_transfer_request {struct gb_spi_transfer* transfers; int chip_select; int mode; void* count; } ;
struct gb_spi_transfer {int xfer_flags; int bits_per_word; int cs_change; void* delay_usecs; void* len; void* speed_hz; } ;
struct gb_operation {TYPE_1__* request; } ;
struct gb_connection {int dummy; } ;
struct TYPE_2__ {struct gb_spi_transfer_request* payload; } ;


 scalar_t__ GB_OPERATION_TIMEOUT_DEFAULT ;
 scalar_t__ GB_SPI_STATE_MSG_ERROR ;
 scalar_t__ GB_SPI_STATE_MSG_RUNNING ;
 scalar_t__ GB_SPI_STATE_OP_DONE ;
 scalar_t__ GB_SPI_STATE_OP_READY ;
 int GB_SPI_TYPE_TRANSFER ;
 int GB_SPI_XFER_INPROGRESS ;
 int GB_SPI_XFER_READ ;
 int GB_SPI_XFER_WRITE ;
 int GFP_KERNEL ;
 size_t MSEC_PER_SEC ;
 size_t calc_rx_xfer_size (size_t,size_t*,size_t,size_t) ;
 size_t calc_tx_xfer_size (size_t,size_t,size_t,size_t) ;
 void* cpu_to_le16 (size_t) ;
 void* cpu_to_le32 (size_t) ;
 int dev_err (int ,char*,size_t) ;
 struct gb_operation* gb_operation_create (struct gb_connection*,int ,size_t,size_t,int ) ;
 size_t gb_operation_get_payload_size_max (struct gb_connection*) ;
 struct spi_transfer* get_next_xfer (struct spi_transfer*,struct spi_message*) ;
 int is_last_xfer_done (struct gb_spilib*) ;
 int memcpy (void*,size_t,size_t) ;
 int tx_header_fit_operation (size_t,size_t,size_t) ;

__attribute__((used)) static struct gb_operation *gb_spi_operation_create(struct gb_spilib *spi,
  struct gb_connection *connection, struct spi_message *msg)
{
 struct gb_spi_transfer_request *request;
 struct spi_device *dev = msg->spi;
 struct spi_transfer *xfer;
 struct gb_spi_transfer *gb_xfer;
 struct gb_operation *operation;
 u32 tx_size = 0, rx_size = 0, count = 0, xfer_len = 0, request_size;
 u32 tx_xfer_size = 0, rx_xfer_size = 0, len;
 u32 total_len = 0;
 unsigned int xfer_timeout;
 size_t data_max;
 void *tx_data;

 data_max = gb_operation_get_payload_size_max(connection);
 xfer = spi->first_xfer;



 while (msg->state != GB_SPI_STATE_OP_READY) {
  msg->state = GB_SPI_STATE_MSG_RUNNING;
  spi->last_xfer = xfer;

  if (!xfer->tx_buf && !xfer->rx_buf) {
   dev_err(spi->parent,
    "bufferless transfer, length %u\n", xfer->len);
   msg->state = GB_SPI_STATE_MSG_ERROR;
   return ((void*)0);
  }

  tx_xfer_size = 0;
  rx_xfer_size = 0;

  if (xfer->tx_buf) {
   len = xfer->len - spi->tx_xfer_offset;
   if (!tx_header_fit_operation(tx_size, count, data_max))
    break;
   tx_xfer_size = calc_tx_xfer_size(tx_size, count,
        len, data_max);
   spi->last_xfer_size = tx_xfer_size;
  }

  if (xfer->rx_buf) {
   len = xfer->len - spi->rx_xfer_offset;
   rx_xfer_size = calc_rx_xfer_size(rx_size, &tx_xfer_size,
        len, data_max);
   spi->last_xfer_size = rx_xfer_size;
  }

  tx_size += tx_xfer_size;
  rx_size += rx_xfer_size;

  total_len += spi->last_xfer_size;
  count++;

  xfer = get_next_xfer(xfer, msg);
  if (!xfer || total_len >= data_max)
   msg->state = GB_SPI_STATE_OP_READY;
 }





 request_size = sizeof(*request);
 request_size += count * sizeof(*gb_xfer);
 request_size += tx_size;


 operation = gb_operation_create(connection, GB_SPI_TYPE_TRANSFER,
     request_size, rx_size, GFP_KERNEL);
 if (!operation)
  return ((void*)0);

 request = operation->request->payload;
 request->count = cpu_to_le16(count);
 request->mode = dev->mode;
 request->chip_select = dev->chip_select;

 gb_xfer = &request->transfers[0];
 tx_data = gb_xfer + count;


 xfer = spi->first_xfer;
 while (msg->state != GB_SPI_STATE_OP_DONE) {
  if (xfer == spi->last_xfer)
   xfer_len = spi->last_xfer_size;
  else
   xfer_len = xfer->len;


  xfer_timeout = xfer_len * 8 * MSEC_PER_SEC / xfer->speed_hz;
  xfer_timeout += GB_OPERATION_TIMEOUT_DEFAULT;

  if (xfer_timeout > spi->op_timeout)
   spi->op_timeout = xfer_timeout;

  gb_xfer->speed_hz = cpu_to_le32(xfer->speed_hz);
  gb_xfer->len = cpu_to_le32(xfer_len);
  gb_xfer->delay_usecs = cpu_to_le16(xfer->delay_usecs);
  gb_xfer->cs_change = xfer->cs_change;
  gb_xfer->bits_per_word = xfer->bits_per_word;


  if (xfer->tx_buf) {
   gb_xfer->xfer_flags |= GB_SPI_XFER_WRITE;
   memcpy(tx_data, xfer->tx_buf + spi->tx_xfer_offset,
          xfer_len);
   tx_data += xfer_len;
  }

  if (xfer->rx_buf)
   gb_xfer->xfer_flags |= GB_SPI_XFER_READ;

  if (xfer == spi->last_xfer) {
   if (!is_last_xfer_done(spi))
    gb_xfer->xfer_flags |= GB_SPI_XFER_INPROGRESS;
   msg->state = GB_SPI_STATE_OP_DONE;
   continue;
  }

  gb_xfer++;
  xfer = get_next_xfer(xfer, msg);
 }

 msg->actual_length += total_len;

 return operation;
}
