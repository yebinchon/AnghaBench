
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct cedrus_dev {int dummy; } ;
struct cedrus_ctx {struct cedrus_dev* dev; } ;


 int VE_DEC_MPEG_CTRL ;
 int VE_DEC_MPEG_CTRL_IRQ_MASK ;
 int cedrus_read (struct cedrus_dev*,int ) ;
 int cedrus_write (struct cedrus_dev*,int ,int ) ;

__attribute__((used)) static void cedrus_mpeg2_irq_disable(struct cedrus_ctx *ctx)
{
 struct cedrus_dev *dev = ctx->dev;
 u32 reg = cedrus_read(dev, VE_DEC_MPEG_CTRL);

 reg &= ~VE_DEC_MPEG_CTRL_IRQ_MASK;

 cedrus_write(dev, VE_DEC_MPEG_CTRL, reg);
}
