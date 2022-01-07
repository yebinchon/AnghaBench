
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct wilc_sdio {int block_size; } ;
struct wilc {struct wilc_sdio* bus_data; int dev; } ;
struct sdio_func {int dev; } ;
struct sdio_cmd53 {int function; int address; int block_mode; int increment; int count; int block_size; int * buffer; scalar_t__ read_write; } ;


 int dev_err (int *,char*,int) ;
 struct sdio_func* dev_to_sdio_func (int ) ;
 int wilc_sdio_cmd53 (struct wilc*,struct sdio_cmd53*) ;
 int wilc_sdio_set_func0_csa_address (struct wilc*,int) ;

__attribute__((used)) static int wilc_sdio_read(struct wilc *wilc, u32 addr, u8 *buf, u32 size)
{
 struct sdio_func *func = dev_to_sdio_func(wilc->dev);
 struct wilc_sdio *sdio_priv = wilc->bus_data;
 u32 block_size = sdio_priv->block_size;
 struct sdio_cmd53 cmd;
 int nblk, nleft, ret;

 cmd.read_write = 0;
 if (addr > 0) {



  if (size & 0x3) {
   size += 4;
   size &= ~0x3;
  }




  cmd.function = 0;
  cmd.address = 0x10f;
 } else {



  if (size & 0x3) {
   size += 4;
   size &= ~0x3;
  }




  cmd.function = 1;
  cmd.address = 0;
 }

 nblk = size / block_size;
 nleft = size % block_size;

 if (nblk > 0) {
  cmd.block_mode = 1;
  cmd.increment = 1;
  cmd.count = nblk;
  cmd.buffer = buf;
  cmd.block_size = block_size;
  if (addr > 0) {
   if (!wilc_sdio_set_func0_csa_address(wilc, addr))
    goto fail;
  }
  ret = wilc_sdio_cmd53(wilc, &cmd);
  if (ret) {
   dev_err(&func->dev,
    "Failed cmd53 [%x], block read...\n", addr);
   goto fail;
  }
  if (addr > 0)
   addr += nblk * block_size;
  buf += nblk * block_size;
 }

 if (nleft > 0) {
  cmd.block_mode = 0;
  cmd.increment = 1;
  cmd.count = nleft;
  cmd.buffer = buf;

  cmd.block_size = block_size;

  if (addr > 0) {
   if (!wilc_sdio_set_func0_csa_address(wilc, addr))
    goto fail;
  }
  ret = wilc_sdio_cmd53(wilc, &cmd);
  if (ret) {
   dev_err(&func->dev,
    "Failed cmd53 [%x], bytes read...\n", addr);
   goto fail;
  }
 }

 return 1;

fail:

 return 0;
}
