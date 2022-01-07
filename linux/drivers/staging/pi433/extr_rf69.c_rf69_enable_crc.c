
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spi_device {int dummy; } ;


 int MASK_PACKETCONFIG1_CRC_ON ;
 int REG_PACKETCONFIG1 ;
 int rf69_set_bit (struct spi_device*,int ,int ) ;

int rf69_enable_crc(struct spi_device *spi)
{
 return rf69_set_bit(spi, REG_PACKETCONFIG1, MASK_PACKETCONFIG1_CRC_ON);
}
