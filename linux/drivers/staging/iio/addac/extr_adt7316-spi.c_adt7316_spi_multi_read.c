
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct spi_device {int dev; } ;


 int ADT7316_REG_MAX_ADDR ;
 int ADT7316_SPI_CMD_READ ;
 int ADT7316_SPI_CMD_WRITE ;
 int dev_err (int *,char*) ;
 int spi_write (struct spi_device*,int *,int) ;
 int spi_write_then_read (struct spi_device*,int *,int,int *,int ) ;

__attribute__((used)) static int adt7316_spi_multi_read(void *client, u8 reg, u8 count, u8 *data)
{
 struct spi_device *spi_dev = client;
 u8 cmd[2];
 int ret;

 if (count > ADT7316_REG_MAX_ADDR)
  count = ADT7316_REG_MAX_ADDR;

 cmd[0] = ADT7316_SPI_CMD_WRITE;
 cmd[1] = reg;

 ret = spi_write(spi_dev, cmd, 2);
 if (ret < 0) {
  dev_err(&spi_dev->dev, "SPI fail to select reg\n");
  return ret;
 }

 cmd[0] = ADT7316_SPI_CMD_READ;

 ret = spi_write_then_read(spi_dev, cmd, 1, data, count);
 if (ret < 0) {
  dev_err(&spi_dev->dev, "SPI read data error\n");
  return ret;
 }

 return 0;
}
