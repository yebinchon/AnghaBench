
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cedrus_dev {int dummy; } ;
struct cedrus_ctx {struct cedrus_dev* dev; } ;


 int VE_H264_TRIGGER_TYPE ;
 int VE_H264_TRIGGER_TYPE_AVC_SLICE_DECODE ;
 int cedrus_write (struct cedrus_dev*,int ,int ) ;

__attribute__((used)) static void cedrus_h264_trigger(struct cedrus_ctx *ctx)
{
 struct cedrus_dev *dev = ctx->dev;

 cedrus_write(dev, VE_H264_TRIGGER_TYPE,
       VE_H264_TRIGGER_TYPE_AVC_SLICE_DECODE);
}
