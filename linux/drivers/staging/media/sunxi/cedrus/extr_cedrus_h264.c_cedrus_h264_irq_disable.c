
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct cedrus_dev {int dummy; } ;
struct cedrus_ctx {struct cedrus_dev* dev; } ;


 int VE_H264_CTRL ;
 int VE_H264_CTRL_INT_MASK ;
 int cedrus_read (struct cedrus_dev*,int ) ;
 int cedrus_write (struct cedrus_dev*,int ,int) ;

__attribute__((used)) static void cedrus_h264_irq_disable(struct cedrus_ctx *ctx)
{
 struct cedrus_dev *dev = ctx->dev;
 u32 reg = cedrus_read(dev, VE_H264_CTRL);

 cedrus_write(dev, VE_H264_CTRL,
       reg & ~VE_H264_CTRL_INT_MASK);
}
