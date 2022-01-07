
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct spi_device {int dummy; } ;


 int REG_BROADCASTADRS ;
 int rf69_write_reg (struct spi_device*,int ,int ) ;

int rf69_set_broadcast_address(struct spi_device *spi, u8 broadcast_address)
{
 return rf69_write_reg(spi, REG_BROADCASTADRS, broadcast_address);
}
