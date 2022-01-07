
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spi_device {int dev; } ;
typedef enum packet_format { ____Placeholder_packet_format } packet_format ;


 int EINVAL ;
 int MASK_PACKETCONFIG1_PACKET_FORMAT_VARIABLE ;
 int REG_PACKETCONFIG1 ;
 int dev_dbg (int *,char*) ;


 int rf69_clear_bit (struct spi_device*,int ,int ) ;
 int rf69_set_bit (struct spi_device*,int ,int ) ;

int rf69_set_packet_format(struct spi_device *spi,
      enum packet_format packet_format)
{
 switch (packet_format) {
 case 128:
  return rf69_set_bit(spi, REG_PACKETCONFIG1,
        MASK_PACKETCONFIG1_PACKET_FORMAT_VARIABLE);
 case 129:
  return rf69_clear_bit(spi, REG_PACKETCONFIG1,
          MASK_PACKETCONFIG1_PACKET_FORMAT_VARIABLE);
 default:
  dev_dbg(&spi->dev, "set: illegal input param");
  return -EINVAL;
 }
}
