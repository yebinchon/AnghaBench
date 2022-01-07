
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wilc {int dev; } ;
struct sdio_func {int dev; } ;
struct sdio_cmd52 {int read_write; int address; int data; scalar_t__ raw; scalar_t__ function; } ;


 int dev_err (int *,char*) ;
 struct sdio_func* dev_to_sdio_func (int ) ;
 int wilc_sdio_cmd52 (struct wilc*,struct sdio_cmd52*) ;

__attribute__((used)) static int wilc_sdio_reset(struct wilc *wilc)
{
 struct sdio_cmd52 cmd;
 int ret;
 struct sdio_func *func = dev_to_sdio_func(wilc->dev);

 cmd.read_write = 1;
 cmd.function = 0;
 cmd.raw = 0;
 cmd.address = 0x6;
 cmd.data = 0x8;
 ret = wilc_sdio_cmd52(wilc, &cmd);
 if (ret) {
  dev_err(&func->dev, "Fail cmd 52, reset cmd ...\n");
  return ret;
 }
 return 0;
}
