
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct cedrus_dev {int dummy; } ;
typedef enum cedrus_h264_sram_off { ____Placeholder_cedrus_h264_sram_off } cedrus_h264_sram_off ;


 size_t DIV_ROUND_UP (size_t,int) ;
 int VE_AVC_SRAM_PORT_DATA ;
 int VE_AVC_SRAM_PORT_OFFSET ;
 int cedrus_write (struct cedrus_dev*,int ,int) ;

__attribute__((used)) static void cedrus_h264_write_sram(struct cedrus_dev *dev,
       enum cedrus_h264_sram_off off,
       const void *data, size_t len)
{
 const u32 *buffer = data;
 size_t count = DIV_ROUND_UP(len, 4);

 cedrus_write(dev, VE_AVC_SRAM_PORT_OFFSET, off << 2);

 while (count--)
  cedrus_write(dev, VE_AVC_SRAM_PORT_DATA, *buffer++);
}
