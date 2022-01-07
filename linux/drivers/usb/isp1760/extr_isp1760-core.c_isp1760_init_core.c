
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct isp1760_device {int devflags; int dev; int regs; scalar_t__ rst_gpio; } ;


 int DC_MODE ;
 int HC_HW_MODE_CTRL ;
 int HC_PORT1_CTRL ;
 int HC_RESET_REG ;
 int HW_ANA_DIGI_OC ;
 int HW_COMN_IRQ ;
 int HW_DACK_POL_HIGH ;
 int HW_DATA_BUS_32BIT ;
 int HW_DM_PULLDOWN ;
 int HW_DP_PULLDOWN ;
 int HW_DREQ_POL_HIGH ;
 int HW_INTR_EDGE_TRIG ;
 int HW_INTR_HIGH_ACT ;
 int HW_OTG_DISABLE ;
 int HW_SEL_CP_EXT ;
 int HW_SW_SEL_HC_DC ;
 int HW_VBUS_DRV ;
 int ISP1760_FLAG_ANALOG_OC ;
 int ISP1760_FLAG_BUS_WIDTH_16 ;
 int ISP1760_FLAG_DACK_POL_HIGH ;
 int ISP1760_FLAG_DREQ_POL_HIGH ;
 int ISP1760_FLAG_INTR_EDGE_TRIG ;
 int ISP1760_FLAG_INTR_POL_HIGH ;
 int ISP1760_FLAG_ISP1761 ;
 int ISP1760_FLAG_OTG_EN ;
 int SW_RESET_RESET_ALL ;
 int dev_info (int ,char*,int,char*) ;
 int gpiod_set_value_cansleep (scalar_t__,int) ;
 int isp1760_write32 (int ,int ,int) ;
 int msleep (int) ;

__attribute__((used)) static void isp1760_init_core(struct isp1760_device *isp)
{
 u32 otgctrl;
 u32 hwmode;


 if (isp->rst_gpio) {
  gpiod_set_value_cansleep(isp->rst_gpio, 1);
  msleep(50);
  gpiod_set_value_cansleep(isp->rst_gpio, 0);
 }





 isp1760_write32(isp->regs, HC_RESET_REG, SW_RESET_RESET_ALL);
 msleep(100);


 hwmode = HW_DATA_BUS_32BIT;

 if (isp->devflags & ISP1760_FLAG_BUS_WIDTH_16)
  hwmode &= ~HW_DATA_BUS_32BIT;
 if (isp->devflags & ISP1760_FLAG_ANALOG_OC)
  hwmode |= HW_ANA_DIGI_OC;
 if (isp->devflags & ISP1760_FLAG_DACK_POL_HIGH)
  hwmode |= HW_DACK_POL_HIGH;
 if (isp->devflags & ISP1760_FLAG_DREQ_POL_HIGH)
  hwmode |= HW_DREQ_POL_HIGH;
 if (isp->devflags & ISP1760_FLAG_INTR_POL_HIGH)
  hwmode |= HW_INTR_HIGH_ACT;
 if (isp->devflags & ISP1760_FLAG_INTR_EDGE_TRIG)
  hwmode |= HW_INTR_EDGE_TRIG;







 if (isp->devflags & ISP1760_FLAG_ISP1761) {
  isp1760_write32(isp->regs, DC_MODE, 0);
  hwmode |= HW_COMN_IRQ;
 }






 isp1760_write32(isp->regs, HC_HW_MODE_CTRL, hwmode);
 isp1760_write32(isp->regs, HC_HW_MODE_CTRL, hwmode);
 if ((isp->devflags & ISP1760_FLAG_ISP1761) &&
     (isp->devflags & ISP1760_FLAG_OTG_EN))
  otgctrl = ((HW_DM_PULLDOWN | HW_DP_PULLDOWN) << 16)
   | HW_OTG_DISABLE;
 else
  otgctrl = (HW_SW_SEL_HC_DC << 16)
   | (HW_VBUS_DRV | HW_SEL_CP_EXT);

 isp1760_write32(isp->regs, HC_PORT1_CTRL, otgctrl);

 dev_info(isp->dev, "bus width: %u, oc: %s\n",
   isp->devflags & ISP1760_FLAG_BUS_WIDTH_16 ? 16 : 32,
   isp->devflags & ISP1760_FLAG_ANALOG_OC ? "analog" : "digital");
}
