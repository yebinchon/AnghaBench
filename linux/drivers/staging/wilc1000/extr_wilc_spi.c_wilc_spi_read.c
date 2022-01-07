
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct wilc {int dev; } ;
struct spi_device {int dev; } ;


 int CMD_DMA_EXT_READ ;
 int N_OK ;
 int dev_err (int *,char*,int) ;
 int spi_cmd_complete (struct wilc*,int ,int,int *,int,int ) ;
 struct spi_device* to_spi_device (int ) ;

__attribute__((used)) static int wilc_spi_read(struct wilc *wilc, u32 addr, u8 *buf, u32 size)
{
 struct spi_device *spi = to_spi_device(wilc->dev);
 int result;

 if (size <= 4)
  return 0;

 result = spi_cmd_complete(wilc, CMD_DMA_EXT_READ, addr, buf, size, 0);
 if (result != N_OK) {
  dev_err(&spi->dev, "Failed cmd, read block (%08x)...\n", addr);
  return 0;
 }

 return 1;
}
