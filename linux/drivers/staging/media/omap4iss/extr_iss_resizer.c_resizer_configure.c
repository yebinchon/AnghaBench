
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct v4l2_mbus_framefmt {int height; int width; scalar_t__ code; } ;
struct TYPE_2__ {int bpl_value; } ;
struct iss_resizer_device {scalar_t__ input; TYPE_1__ video_out; struct v4l2_mbus_framefmt* formats; } ;
struct iss_device {int dummy; } ;


 scalar_t__ MEDIA_BUS_FMT_UYVY8_1X16 ;
 scalar_t__ MEDIA_BUS_FMT_YUYV8_1_5X8 ;
 int OMAP4_ISS_MEM_ISP_RESIZER ;
 scalar_t__ RESIZER_INPUT_IPIPEIF ;
 size_t RESIZER_PAD_SINK ;
 size_t RESIZER_PAD_SOURCE_MEM ;
 int RSZ_420_CEN ;
 int RSZ_420_YEN ;
 int RSZ_SRC_FMT0 ;
 int RSZ_SRC_FMT0_BYPASS ;
 int RSZ_SRC_FMT0_SEL ;
 int RSZ_SRC_HPS ;
 int RSZ_SRC_HSZ ;
 int RSZ_SRC_MODE ;
 int RSZ_SRC_MODE_OST ;
 int RSZ_SRC_MODE_WRT ;
 int RSZ_SRC_VPS ;
 int RSZ_SRC_VSZ ;
 int RZA_420 ;
 int RZA_H_DIF ;
 int RZA_I_HPS ;
 int RZA_I_VPS ;
 int RZA_MODE ;
 int RZA_MODE_ONE_SHOT ;
 int RZA_O_HSZ ;
 int RZA_O_VSZ ;
 int RZA_SDR_C_OFT ;
 int RZA_SDR_C_PTR_E ;
 int RZA_SDR_C_PTR_S ;
 int RZA_SDR_Y_OFT ;
 int RZA_SDR_Y_PTR_E ;
 int RZA_SDR_Y_PTR_S ;
 int RZA_V_DIF ;
 int iss_reg_clr (struct iss_device*,int ,int ,int ) ;
 int iss_reg_update (struct iss_device*,int ,int ,int ,int ) ;
 int iss_reg_write (struct iss_device*,int ,int ,int) ;
 struct iss_device* to_iss_device (struct iss_resizer_device*) ;

__attribute__((used)) static void resizer_configure(struct iss_resizer_device *resizer)
{
 struct iss_device *iss = to_iss_device(resizer);
 struct v4l2_mbus_framefmt *informat, *outformat;

 informat = &resizer->formats[RESIZER_PAD_SINK];
 outformat = &resizer->formats[RESIZER_PAD_SOURCE_MEM];




 iss_reg_clr(iss, OMAP4_ISS_MEM_ISP_RESIZER, RSZ_SRC_FMT0,
      RSZ_SRC_FMT0_BYPASS);


 iss_reg_update(iss, OMAP4_ISS_MEM_ISP_RESIZER, RSZ_SRC_FMT0,
         RSZ_SRC_FMT0_SEL,
         resizer->input == RESIZER_INPUT_IPIPEIF ?
         RSZ_SRC_FMT0_SEL : 0);


 iss_reg_clr(iss, OMAP4_ISS_MEM_ISP_RESIZER, RSZ_SRC_MODE,
      RSZ_SRC_MODE_WRT);


 iss_reg_clr(iss, OMAP4_ISS_MEM_ISP_RESIZER, RSZ_SRC_MODE,
      RSZ_SRC_MODE_OST);


 iss_reg_clr(iss, OMAP4_ISS_MEM_ISP_RESIZER, RZA_MODE,
      RZA_MODE_ONE_SHOT);


 iss_reg_write(iss, OMAP4_ISS_MEM_ISP_RESIZER, RSZ_SRC_VPS, 0);
 iss_reg_write(iss, OMAP4_ISS_MEM_ISP_RESIZER, RSZ_SRC_HPS, 0);
 iss_reg_write(iss, OMAP4_ISS_MEM_ISP_RESIZER, RSZ_SRC_VSZ,
        informat->height - 2);
 iss_reg_write(iss, OMAP4_ISS_MEM_ISP_RESIZER, RSZ_SRC_HSZ,
        informat->width - 1);

 iss_reg_write(iss, OMAP4_ISS_MEM_ISP_RESIZER, RZA_I_VPS, 0);
 iss_reg_write(iss, OMAP4_ISS_MEM_ISP_RESIZER, RZA_I_HPS, 0);

 iss_reg_write(iss, OMAP4_ISS_MEM_ISP_RESIZER, RZA_O_VSZ,
        outformat->height - 2);
 iss_reg_write(iss, OMAP4_ISS_MEM_ISP_RESIZER, RZA_O_HSZ,
        outformat->width - 1);

 iss_reg_write(iss, OMAP4_ISS_MEM_ISP_RESIZER, RZA_V_DIF, 0x100);
 iss_reg_write(iss, OMAP4_ISS_MEM_ISP_RESIZER, RZA_H_DIF, 0x100);


 iss_reg_write(iss, OMAP4_ISS_MEM_ISP_RESIZER, RZA_SDR_Y_PTR_S, 0);
 iss_reg_write(iss, OMAP4_ISS_MEM_ISP_RESIZER, RZA_SDR_Y_PTR_E,
        outformat->height - 1);

 iss_reg_write(iss, OMAP4_ISS_MEM_ISP_RESIZER, RZA_SDR_Y_OFT,
        resizer->video_out.bpl_value);


 if ((informat->code == MEDIA_BUS_FMT_UYVY8_1X16) &&
     (outformat->code == MEDIA_BUS_FMT_YUYV8_1_5X8)) {
  iss_reg_write(iss, OMAP4_ISS_MEM_ISP_RESIZER, RZA_420,
         RSZ_420_CEN | RSZ_420_YEN);


  iss_reg_write(iss, OMAP4_ISS_MEM_ISP_RESIZER, RZA_SDR_C_PTR_S,
         0);
  iss_reg_write(iss, OMAP4_ISS_MEM_ISP_RESIZER, RZA_SDR_C_PTR_E,
         outformat->height - 1);

  iss_reg_write(iss, OMAP4_ISS_MEM_ISP_RESIZER, RZA_SDR_C_OFT,
         resizer->video_out.bpl_value);
 } else {
  iss_reg_write(iss, OMAP4_ISS_MEM_ISP_RESIZER, RZA_420, 0);
 }
}
