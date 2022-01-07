
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_mbus_framefmt {int height; int width; } ;
struct iss_ipipe_device {struct v4l2_mbus_framefmt* formats; } ;
struct iss_device {int dummy; } ;


 size_t IPIPE_PAD_SINK ;
 size_t IPIPE_PAD_SOURCE_VP ;
 int IPIPE_SRC_COL ;
 int IPIPE_SRC_COL_EE_B ;
 int IPIPE_SRC_COL_EO_GB ;
 int IPIPE_SRC_COL_OE_GR ;
 int IPIPE_SRC_COL_OO_R ;
 int IPIPE_SRC_FMT ;
 int IPIPE_SRC_FMT_RAW2YUV ;
 int IPIPE_SRC_HPS ;
 int IPIPE_SRC_HSZ ;
 int IPIPE_SRC_HSZ_MASK ;
 int IPIPE_SRC_MODE ;
 int IPIPE_SRC_MODE_OST ;
 int IPIPE_SRC_MODE_WRT ;
 int IPIPE_SRC_VPS ;
 int IPIPE_SRC_VSZ ;
 int IPIPE_SRC_VSZ_MASK ;
 int IPIPE_YUV_PHS ;
 int IPIPE_YUV_PHS_LPF ;
 int OMAP4_ISS_MEM_ISP_IPIPE ;
 int iss_reg_clr (struct iss_device*,int ,int ,int) ;
 int iss_reg_write (struct iss_device*,int ,int ,int) ;
 struct iss_device* to_iss_device (struct iss_ipipe_device*) ;

__attribute__((used)) static void ipipe_configure(struct iss_ipipe_device *ipipe)
{
 struct iss_device *iss = to_iss_device(ipipe);
 struct v4l2_mbus_framefmt *format;


 format = &ipipe->formats[IPIPE_PAD_SINK];


 iss_reg_write(iss, OMAP4_ISS_MEM_ISP_IPIPE, IPIPE_SRC_FMT,
        IPIPE_SRC_FMT_RAW2YUV);


 iss_reg_write(iss, OMAP4_ISS_MEM_ISP_IPIPE, IPIPE_YUV_PHS,
        IPIPE_YUV_PHS_LPF);

 iss_reg_write(iss, OMAP4_ISS_MEM_ISP_IPIPE, IPIPE_SRC_VPS, 0);
 iss_reg_write(iss, OMAP4_ISS_MEM_ISP_IPIPE, IPIPE_SRC_HPS, 0);
 iss_reg_write(iss, OMAP4_ISS_MEM_ISP_IPIPE, IPIPE_SRC_VSZ,
        (format->height - 2) & IPIPE_SRC_VSZ_MASK);
 iss_reg_write(iss, OMAP4_ISS_MEM_ISP_IPIPE, IPIPE_SRC_HSZ,
        (format->width - 1) & IPIPE_SRC_HSZ_MASK);


 iss_reg_clr(iss, OMAP4_ISS_MEM_ISP_IPIPE, IPIPE_SRC_MODE,
      IPIPE_SRC_MODE_WRT | IPIPE_SRC_MODE_OST);


 iss_reg_write(iss, OMAP4_ISS_MEM_ISP_IPIPE, IPIPE_SRC_COL,
        IPIPE_SRC_COL_EE_B | IPIPE_SRC_COL_EO_GB |
        IPIPE_SRC_COL_OE_GR | IPIPE_SRC_COL_OO_R);


 format = &ipipe->formats[IPIPE_PAD_SOURCE_VP];

}
