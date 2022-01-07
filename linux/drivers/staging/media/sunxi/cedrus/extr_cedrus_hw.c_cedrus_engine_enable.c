
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct cedrus_dev {int dummy; } ;
typedef enum cedrus_codec { ____Placeholder_cedrus_codec } cedrus_codec ;




 int EINVAL ;
 int VE_MODE ;
 int VE_MODE_DDR_MODE_BW_128 ;
 int VE_MODE_DEC_H264 ;
 int VE_MODE_DEC_MPEG ;
 int VE_MODE_REC_WR_MODE_2MB ;
 int cedrus_write (struct cedrus_dev*,int ,int ) ;

int cedrus_engine_enable(struct cedrus_dev *dev, enum cedrus_codec codec)
{
 u32 reg = 0;





 reg |= VE_MODE_REC_WR_MODE_2MB;
 reg |= VE_MODE_DDR_MODE_BW_128;

 switch (codec) {
 case 128:
  reg |= VE_MODE_DEC_MPEG;
  break;

 case 129:
  reg |= VE_MODE_DEC_H264;
  break;

 default:
  return -EINVAL;
 }

 cedrus_write(dev, VE_MODE, reg);

 return 0;
}
