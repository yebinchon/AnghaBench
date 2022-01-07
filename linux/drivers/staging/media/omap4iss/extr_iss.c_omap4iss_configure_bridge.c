
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct iss_device {int dummy; } ;
typedef enum ipipeif_input_entity { ____Placeholder_ipipeif_input_entity } ipipeif_input_entity ;




 int ISP5_CTRL ;
 int ISP5_CTRL_PSYNC_CLK_SEL ;
 int ISP5_CTRL_SYNC_ENABLE ;
 int ISP5_CTRL_VD_PULSE_EXT ;
 int ISS_CTRL ;
 int ISS_CTRL_CLK_DIV_MASK ;
 int ISS_CTRL_INPUT_SEL_CSI2A ;
 int ISS_CTRL_INPUT_SEL_CSI2B ;
 int ISS_CTRL_INPUT_SEL_MASK ;
 int ISS_CTRL_SYNC_DETECT_VS_RAISING ;
 int OMAP4_ISS_MEM_ISP_SYS1 ;
 int OMAP4_ISS_MEM_TOP ;
 int iss_reg_read (struct iss_device*,int ,int ) ;
 int iss_reg_write (struct iss_device*,int ,int ,int) ;

void omap4iss_configure_bridge(struct iss_device *iss,
          enum ipipeif_input_entity input)
{
 u32 issctrl_val;
 u32 isp5ctrl_val;

 issctrl_val = iss_reg_read(iss, OMAP4_ISS_MEM_TOP, ISS_CTRL);
 issctrl_val &= ~ISS_CTRL_INPUT_SEL_MASK;
 issctrl_val &= ~ISS_CTRL_CLK_DIV_MASK;

 isp5ctrl_val = iss_reg_read(iss, OMAP4_ISS_MEM_ISP_SYS1, ISP5_CTRL);

 switch (input) {
 case 129:
  issctrl_val |= ISS_CTRL_INPUT_SEL_CSI2A;
  break;

 case 128:
  issctrl_val |= ISS_CTRL_INPUT_SEL_CSI2B;
  break;

 default:
  return;
 }

 issctrl_val |= ISS_CTRL_SYNC_DETECT_VS_RAISING;

 isp5ctrl_val |= ISP5_CTRL_VD_PULSE_EXT | ISP5_CTRL_PSYNC_CLK_SEL |
   ISP5_CTRL_SYNC_ENABLE;

 iss_reg_write(iss, OMAP4_ISS_MEM_TOP, ISS_CTRL, issctrl_val);
 iss_reg_write(iss, OMAP4_ISS_MEM_ISP_SYS1, ISP5_CTRL, isp5ctrl_val);
}
