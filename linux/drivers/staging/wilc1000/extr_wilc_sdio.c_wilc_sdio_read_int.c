
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct wilc_sdio {int nint; int irq_gpio; } ;
struct wilc {struct wilc_sdio* bus_data; int dev; } ;
struct sdio_func {int dev; } ;
struct sdio_cmd52 {int function; int address; int data; scalar_t__ raw; scalar_t__ read_write; } ;


 int BIT (int) ;
 int INT_0 ;
 int INT_1 ;
 int INT_2 ;
 int INT_3 ;
 int INT_4 ;
 int INT_5 ;
 int IRG_FLAGS_OFFSET ;
 int MAX_NUM_INT ;
 int dev_err (int *,char*,int,int) ;
 struct sdio_func* dev_to_sdio_func (int ) ;
 int wilc_sdio_cmd52 (struct wilc*,struct sdio_cmd52*) ;
 int wilc_sdio_read_size (struct wilc*,int*) ;

__attribute__((used)) static int wilc_sdio_read_int(struct wilc *wilc, u32 *int_status)
{
 struct sdio_func *func = dev_to_sdio_func(wilc->dev);
 struct wilc_sdio *sdio_priv = wilc->bus_data;
 u32 tmp;
 struct sdio_cmd52 cmd;

 wilc_sdio_read_size(wilc, &tmp);




 if (!sdio_priv->irq_gpio) {
  int i;

  cmd.read_write = 0;
  cmd.function = 1;
  cmd.address = 0x04;
  cmd.data = 0;
  wilc_sdio_cmd52(wilc, &cmd);

  if (cmd.data & BIT(0))
   tmp |= INT_0;
  if (cmd.data & BIT(2))
   tmp |= INT_1;
  if (cmd.data & BIT(3))
   tmp |= INT_2;
  if (cmd.data & BIT(4))
   tmp |= INT_3;
  if (cmd.data & BIT(5))
   tmp |= INT_4;
  if (cmd.data & BIT(6))
   tmp |= INT_5;
  for (i = sdio_priv->nint; i < MAX_NUM_INT; i++) {
   if ((tmp >> (IRG_FLAGS_OFFSET + i)) & 0x1) {
    dev_err(&func->dev,
     "Unexpected interrupt (1) : tmp=%x, data=%x\n",
     tmp, cmd.data);
    break;
   }
  }
 } else {
  u32 irq_flags;

  cmd.read_write = 0;
  cmd.function = 0;
  cmd.raw = 0;
  cmd.address = 0xf7;
  cmd.data = 0;
  wilc_sdio_cmd52(wilc, &cmd);
  irq_flags = cmd.data & 0x1f;
  tmp |= ((irq_flags >> 0) << IRG_FLAGS_OFFSET);
 }

 *int_status = tmp;

 return 1;
}
