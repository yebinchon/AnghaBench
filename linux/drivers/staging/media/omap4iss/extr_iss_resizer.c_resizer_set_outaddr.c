
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct v4l2_mbus_framefmt {scalar_t__ code; int height; } ;
struct TYPE_2__ {int bpl_value; } ;
struct iss_resizer_device {TYPE_1__ video_out; struct v4l2_mbus_framefmt* formats; } ;
struct iss_device {int dummy; } ;


 scalar_t__ MEDIA_BUS_FMT_UYVY8_1X16 ;
 scalar_t__ MEDIA_BUS_FMT_YUYV8_1_5X8 ;
 int OMAP4_ISS_MEM_ISP_RESIZER ;
 size_t RESIZER_PAD_SINK ;
 size_t RESIZER_PAD_SOURCE_MEM ;
 int RZA_SDR_C_BAD_H ;
 int RZA_SDR_C_BAD_L ;
 int RZA_SDR_C_SAD_H ;
 int RZA_SDR_C_SAD_L ;
 int RZA_SDR_Y_BAD_H ;
 int RZA_SDR_Y_BAD_L ;
 int RZA_SDR_Y_SAD_H ;
 int RZA_SDR_Y_SAD_L ;
 int iss_reg_write (struct iss_device*,int ,int ,int) ;
 struct iss_device* to_iss_device (struct iss_resizer_device*) ;

__attribute__((used)) static void resizer_set_outaddr(struct iss_resizer_device *resizer, u32 addr)
{
 struct iss_device *iss = to_iss_device(resizer);
 struct v4l2_mbus_framefmt *informat, *outformat;

 informat = &resizer->formats[RESIZER_PAD_SINK];
 outformat = &resizer->formats[RESIZER_PAD_SOURCE_MEM];


 iss_reg_write(iss, OMAP4_ISS_MEM_ISP_RESIZER, RZA_SDR_Y_BAD_H,
        (addr >> 16) & 0xffff);
 iss_reg_write(iss, OMAP4_ISS_MEM_ISP_RESIZER, RZA_SDR_Y_BAD_L,
        addr & 0xffff);


 iss_reg_write(iss, OMAP4_ISS_MEM_ISP_RESIZER, RZA_SDR_Y_SAD_H,
        (addr >> 16) & 0xffff);
 iss_reg_write(iss, OMAP4_ISS_MEM_ISP_RESIZER, RZA_SDR_Y_SAD_L,
        addr & 0xffff);


 if ((informat->code == MEDIA_BUS_FMT_UYVY8_1X16) &&
     (outformat->code == MEDIA_BUS_FMT_YUYV8_1_5X8)) {
  u32 c_addr = addr + resizer->video_out.bpl_value
      * outformat->height;


  if ((c_addr ^ addr) & 0x7f) {
   c_addr &= ~0x7f;
   c_addr += 0x80;
   c_addr |= addr & 0x7f;
  }


  iss_reg_write(iss, OMAP4_ISS_MEM_ISP_RESIZER, RZA_SDR_C_BAD_H,
         (c_addr >> 16) & 0xffff);
  iss_reg_write(iss, OMAP4_ISS_MEM_ISP_RESIZER, RZA_SDR_C_BAD_L,
         c_addr & 0xffff);


  iss_reg_write(iss, OMAP4_ISS_MEM_ISP_RESIZER, RZA_SDR_C_SAD_H,
         (c_addr >> 16) & 0xffff);
  iss_reg_write(iss, OMAP4_ISS_MEM_ISP_RESIZER, RZA_SDR_C_SAD_L,
         c_addr & 0xffff);
 }
}
