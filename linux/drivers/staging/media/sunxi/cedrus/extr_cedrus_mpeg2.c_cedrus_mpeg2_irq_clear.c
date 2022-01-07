
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cedrus_dev {int dummy; } ;
struct cedrus_ctx {struct cedrus_dev* dev; } ;


 int VE_DEC_MPEG_STATUS ;
 int VE_DEC_MPEG_STATUS_CHECK_MASK ;
 int cedrus_write (struct cedrus_dev*,int ,int ) ;

__attribute__((used)) static void cedrus_mpeg2_irq_clear(struct cedrus_ctx *ctx)
{
 struct cedrus_dev *dev = ctx->dev;

 cedrus_write(dev, VE_DEC_MPEG_STATUS, VE_DEC_MPEG_STATUS_CHECK_MASK);
}
