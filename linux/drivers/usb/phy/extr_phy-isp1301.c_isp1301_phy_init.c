
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_phy {int dummy; } ;
struct isp1301 {int dummy; } ;


 int ISP1301_I2C_INTERRUPT_FALLING ;
 int ISP1301_I2C_INTERRUPT_LATCH ;
 int ISP1301_I2C_INTERRUPT_RISING ;
 int ISP1301_I2C_MODE_CONTROL_1 ;
 int ISP1301_I2C_MODE_CONTROL_2 ;
 int ISP1301_I2C_OTG_CONTROL_1 ;
 int MC1_DAT_SE0 ;
 int MC1_SPEED_REG ;
 int MC1_UART_EN ;
 int MC2_BI_DI ;
 int MC2_PSW_EN ;
 int MC2_SPD_SUSP_CTRL ;
 int OTG1_DM_PULLDOWN ;
 int OTG1_DM_PULLUP ;
 int OTG1_DP_PULLDOWN ;
 int OTG1_DP_PULLUP ;
 int isp1301_clear (struct isp1301*,int ,int) ;
 int isp1301_write (struct isp1301*,int ,int) ;
 struct isp1301* phy_to_isp (struct usb_phy*) ;

__attribute__((used)) static int isp1301_phy_init(struct usb_phy *phy)
{
 struct isp1301 *isp = phy_to_isp(phy);


 isp1301_clear(isp, ISP1301_I2C_MODE_CONTROL_1, MC1_UART_EN);
 isp1301_clear(isp, ISP1301_I2C_MODE_CONTROL_1, ~MC1_SPEED_REG);
 isp1301_write(isp, ISP1301_I2C_MODE_CONTROL_1, MC1_SPEED_REG);
 isp1301_clear(isp, ISP1301_I2C_MODE_CONTROL_2, ~0);
 isp1301_write(isp, ISP1301_I2C_MODE_CONTROL_2, (MC2_BI_DI | MC2_PSW_EN
    | MC2_SPD_SUSP_CTRL));

 isp1301_clear(isp, ISP1301_I2C_OTG_CONTROL_1, ~0);
 isp1301_write(isp, ISP1301_I2C_MODE_CONTROL_1, MC1_DAT_SE0);
 isp1301_write(isp, ISP1301_I2C_OTG_CONTROL_1, (OTG1_DM_PULLDOWN
    | OTG1_DP_PULLDOWN));
 isp1301_clear(isp, ISP1301_I2C_OTG_CONTROL_1, (OTG1_DM_PULLUP
    | OTG1_DP_PULLUP));


 isp1301_clear(isp, ISP1301_I2C_INTERRUPT_LATCH, ~0);
 isp1301_clear(isp, ISP1301_I2C_INTERRUPT_FALLING, ~0);
 isp1301_clear(isp, ISP1301_I2C_INTERRUPT_RISING, ~0);

 return 0;
}
