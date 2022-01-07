
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct wilc_sdio {int block_size; } ;
struct wilc {struct wilc_sdio* bus_data; int dev; } ;
struct sdio_func {int dev; } ;
struct sdio_cmd53 {int address; int increment; int count; int block_size; int * buffer; scalar_t__ block_mode; scalar_t__ function; scalar_t__ read_write; } ;
struct sdio_cmd52 {int address; int data; scalar_t__ raw; scalar_t__ function; scalar_t__ read_write; } ;


 int dev_err (int *,char*,int) ;
 struct sdio_func* dev_to_sdio_func (int ) ;
 int le32_to_cpus (int*) ;
 int wilc_sdio_cmd52 (struct wilc*,struct sdio_cmd52*) ;
 int wilc_sdio_cmd53 (struct wilc*,struct sdio_cmd53*) ;
 int wilc_sdio_set_func0_csa_address (struct wilc*,int) ;

__attribute__((used)) static int wilc_sdio_read_reg(struct wilc *wilc, u32 addr, u32 *data)
{
 struct sdio_func *func = dev_to_sdio_func(wilc->dev);
 struct wilc_sdio *sdio_priv = wilc->bus_data;
 int ret;

 if (addr >= 0xf0 && addr <= 0xff) {
  struct sdio_cmd52 cmd;

  cmd.read_write = 0;
  cmd.function = 0;
  cmd.raw = 0;
  cmd.address = addr;
  ret = wilc_sdio_cmd52(wilc, &cmd);
  if (ret) {
   dev_err(&func->dev,
    "Failed cmd 52, read reg (%08x) ...\n", addr);
   goto fail;
  }
  *data = cmd.data;
 } else {
  struct sdio_cmd53 cmd;

  if (!wilc_sdio_set_func0_csa_address(wilc, addr))
   goto fail;

  cmd.read_write = 0;
  cmd.function = 0;
  cmd.address = 0x10f;
  cmd.block_mode = 0;
  cmd.increment = 1;
  cmd.count = 4;
  cmd.buffer = (u8 *)data;

  cmd.block_size = sdio_priv->block_size;
  ret = wilc_sdio_cmd53(wilc, &cmd);
  if (ret) {
   dev_err(&func->dev,
    "Failed cmd53, read reg (%08x)...\n", addr);
   goto fail;
  }
 }

 le32_to_cpus(data);

 return 1;

fail:

 return 0;
}
