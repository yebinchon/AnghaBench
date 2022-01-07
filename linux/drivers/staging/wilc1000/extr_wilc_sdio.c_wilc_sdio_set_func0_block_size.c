
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* u8 ;
typedef int u32 ;
struct wilc {int dev; } ;
struct sdio_func {int dev; } ;
struct sdio_cmd52 {int read_write; int address; void* data; scalar_t__ raw; scalar_t__ function; } ;


 int dev_err (int *,char*) ;
 struct sdio_func* dev_to_sdio_func (int ) ;
 int wilc_sdio_cmd52 (struct wilc*,struct sdio_cmd52*) ;

__attribute__((used)) static int wilc_sdio_set_func0_block_size(struct wilc *wilc, u32 block_size)
{
 struct sdio_func *func = dev_to_sdio_func(wilc->dev);
 struct sdio_cmd52 cmd;
 int ret;

 cmd.read_write = 1;
 cmd.function = 0;
 cmd.raw = 0;
 cmd.address = 0x10;
 cmd.data = (u8)block_size;
 ret = wilc_sdio_cmd52(wilc, &cmd);
 if (ret) {
  dev_err(&func->dev, "Failed cmd52, set 0x10 data...\n");
  goto fail;
 }

 cmd.address = 0x11;
 cmd.data = (u8)(block_size >> 8);
 ret = wilc_sdio_cmd52(wilc, &cmd);
 if (ret) {
  dev_err(&func->dev, "Failed cmd52, set 0x11 data...\n");
  goto fail;
 }

 return 1;
fail:
 return 0;
}
