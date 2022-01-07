
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef scalar_t__ u16 ;
struct dln2_spi {int dummy; } ;


 int DLN2_SPI_ATTR_LEAVE_SS_LOW ;
 scalar_t__ DLN2_SPI_MAX_XFER_SIZE ;
 int EINVAL ;
 int dln2_spi_read_one (struct dln2_spi*,int *,scalar_t__,int ) ;
 int dln2_spi_read_write_one (struct dln2_spi*,int const*,int *,scalar_t__,int ) ;
 int dln2_spi_write_one (struct dln2_spi*,int const*,scalar_t__,int ) ;

__attribute__((used)) static int dln2_spi_rdwr(struct dln2_spi *dln2, const u8 *tx_data,
    u8 *rx_data, u16 data_len, u8 attr) {
 int ret;
 u16 len;
 u8 temp_attr;
 u16 remaining = data_len;
 u16 offset;

 do {
  if (remaining > DLN2_SPI_MAX_XFER_SIZE) {
   len = DLN2_SPI_MAX_XFER_SIZE;
   temp_attr = DLN2_SPI_ATTR_LEAVE_SS_LOW;
  } else {
   len = remaining;
   temp_attr = attr;
  }

  offset = data_len - remaining;

  if (tx_data && rx_data) {
   ret = dln2_spi_read_write_one(dln2,
            tx_data + offset,
            rx_data + offset,
            len, temp_attr);
  } else if (tx_data) {
   ret = dln2_spi_write_one(dln2,
       tx_data + offset,
       len, temp_attr);
  } else if (rx_data) {
   ret = dln2_spi_read_one(dln2,
      rx_data + offset,
      len, temp_attr);
   } else {
   return -EINVAL;
   }

  if (ret < 0)
   return ret;

  remaining -= len;
 } while (remaining);

 return 0;
}
