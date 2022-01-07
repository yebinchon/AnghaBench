
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct spi_device {int dummy; } ;


 int REG_PAYLOAD_LENGTH ;
 int rf69_write_reg (struct spi_device*,int ,int ) ;

int rf69_set_payload_length(struct spi_device *spi, u8 payload_length)
{
 return rf69_write_reg(spi, REG_PAYLOAD_LENGTH, payload_length);
}
