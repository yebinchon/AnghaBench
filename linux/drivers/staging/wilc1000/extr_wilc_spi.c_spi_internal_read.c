
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct wilc {int dev; } ;
struct spi_device {int dev; } ;


 int CMD_INTERNAL_READ ;
 int N_OK ;
 int dev_err (int *,char*) ;
 int le32_to_cpus (int *) ;
 int spi_cmd_complete (struct wilc*,int ,int ,int *,int,int ) ;
 struct spi_device* to_spi_device (int ) ;

__attribute__((used)) static int spi_internal_read(struct wilc *wilc, u32 adr, u32 *data)
{
 struct spi_device *spi = to_spi_device(wilc->dev);
 int result;

 result = spi_cmd_complete(wilc, CMD_INTERNAL_READ, adr, (u8 *)data, 4,
      0);
 if (result != N_OK) {
  dev_err(&spi->dev, "Failed internal read cmd...\n");
  return 0;
 }

 le32_to_cpus(data);

 return 1;
}
