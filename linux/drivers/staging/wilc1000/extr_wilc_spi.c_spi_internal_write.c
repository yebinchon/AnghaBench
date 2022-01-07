
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct wilc {int dev; } ;
struct spi_device {int dev; } ;


 int CMD_INTERNAL_WRITE ;
 int N_OK ;
 int cpu_to_le32s (int *) ;
 int dev_err (int *,char*) ;
 int spi_cmd_complete (struct wilc*,int ,int ,int *,int,int ) ;
 struct spi_device* to_spi_device (int ) ;

__attribute__((used)) static int spi_internal_write(struct wilc *wilc, u32 adr, u32 dat)
{
 struct spi_device *spi = to_spi_device(wilc->dev);
 int result;

 cpu_to_le32s(&dat);
 result = spi_cmd_complete(wilc, CMD_INTERNAL_WRITE, adr, (u8 *)&dat, 4,
      0);
 if (result != N_OK)
  dev_err(&spi->dev, "Failed internal write cmd...\n");

 return result;
}
