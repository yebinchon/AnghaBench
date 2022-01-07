
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct cedrus_dev {int dummy; } ;
struct cedrus_ctx {struct cedrus_dev* dev; } ;


 int VE_DEC_MPEG_TRIGGER ;
 int VE_DEC_MPEG_TRIGGER_HW_MPEG_VLD ;
 int VE_DEC_MPEG_TRIGGER_MB_BOUNDARY ;
 int VE_DEC_MPEG_TRIGGER_MPEG2 ;
 int cedrus_write (struct cedrus_dev*,int ,int) ;

__attribute__((used)) static void cedrus_mpeg2_trigger(struct cedrus_ctx *ctx)
{
 struct cedrus_dev *dev = ctx->dev;
 u32 reg;


 reg = VE_DEC_MPEG_TRIGGER_HW_MPEG_VLD | VE_DEC_MPEG_TRIGGER_MPEG2 |
       VE_DEC_MPEG_TRIGGER_MB_BOUNDARY;

 cedrus_write(dev, VE_DEC_MPEG_TRIGGER, reg);
}
