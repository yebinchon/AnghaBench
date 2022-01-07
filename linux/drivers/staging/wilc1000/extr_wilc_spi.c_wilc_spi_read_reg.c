
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct wilc {int dev; } ;
struct spi_device {int dev; } ;


 int CMD_INTERNAL_READ ;
 int CMD_SINGLE_READ ;
 int N_OK ;
 int dev_err (int *,char*,int) ;
 int le32_to_cpus (int*) ;
 int spi_cmd_complete (struct wilc*,int,int,int*,int,int) ;
 struct spi_device* to_spi_device (int ) ;

__attribute__((used)) static int wilc_spi_read_reg(struct wilc *wilc, u32 addr, u32 *data)
{
 struct spi_device *spi = to_spi_device(wilc->dev);
 int result = N_OK;
 u8 cmd = CMD_SINGLE_READ;
 u8 clockless = 0;

 if (addr < 0x30) {

  cmd = CMD_INTERNAL_READ;
  clockless = 1;
 }

 result = spi_cmd_complete(wilc, cmd, addr, (u8 *)data, 4, clockless);
 if (result != N_OK) {
  dev_err(&spi->dev, "Failed cmd, read reg (%08x)...\n", addr);
  return 0;
 }

 le32_to_cpus(data);

 return 1;
}
