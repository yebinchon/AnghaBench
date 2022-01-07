
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct s3c24xx_spi {unsigned int count; unsigned int len; int done; scalar_t__ regs; void** rx; scalar_t__ fiq_inuse; int dev; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 scalar_t__ S3C2410_SPRDAT ;
 scalar_t__ S3C2410_SPSTA ;
 unsigned int S3C2410_SPSTA_DCOL ;
 unsigned int S3C2410_SPSTA_READY ;
 scalar_t__ S3C2410_SPTDAT ;
 int complete (int *) ;
 int dev_dbg (int ,char*) ;
 int hw_txbyte (struct s3c24xx_spi*,unsigned int) ;
 void* readb (scalar_t__) ;
 int s3c24xx_spi_usingfiq (struct s3c24xx_spi*) ;
 int writeb (int ,scalar_t__) ;

__attribute__((used)) static irqreturn_t s3c24xx_spi_irq(int irq, void *dev)
{
 struct s3c24xx_spi *hw = dev;
 unsigned int spsta = readb(hw->regs + S3C2410_SPSTA);
 unsigned int count = hw->count;

 if (spsta & S3C2410_SPSTA_DCOL) {
  dev_dbg(hw->dev, "data-collision\n");
  complete(&hw->done);
  goto irq_done;
 }

 if (!(spsta & S3C2410_SPSTA_READY)) {
  dev_dbg(hw->dev, "spi not ready for tx?\n");
  complete(&hw->done);
  goto irq_done;
 }

 if (!s3c24xx_spi_usingfiq(hw)) {
  hw->count++;

  if (hw->rx)
   hw->rx[count] = readb(hw->regs + S3C2410_SPRDAT);

  count++;

  if (count < hw->len)
   writeb(hw_txbyte(hw, count), hw->regs + S3C2410_SPTDAT);
  else
   complete(&hw->done);
 } else {
  hw->count = hw->len;
  hw->fiq_inuse = 0;

  if (hw->rx)
   hw->rx[hw->len-1] = readb(hw->regs + S3C2410_SPRDAT);

  complete(&hw->done);
 }

 irq_done:
 return IRQ_HANDLED;
}
