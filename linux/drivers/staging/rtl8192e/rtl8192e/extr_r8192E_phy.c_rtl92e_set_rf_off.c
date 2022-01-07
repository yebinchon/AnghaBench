
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;


 int ANAPAR_FOR_8192PciE ;
 int BIT4 ;
 int rFPGA0_AnalogParameter1 ;
 int rFPGA0_AnalogParameter4 ;
 int rFPGA0_XA_RFInterfaceOE ;
 int rOFDM0_TRxPathEnable ;
 int rOFDM1_TRxPathEnable ;
 int rtl92e_set_bb_reg (struct net_device*,int ,int,int) ;
 int rtl92e_writeb (struct net_device*,int ,int) ;

void rtl92e_set_rf_off(struct net_device *dev)
{

 rtl92e_set_bb_reg(dev, rFPGA0_XA_RFInterfaceOE, BIT4, 0x0);
 rtl92e_set_bb_reg(dev, rFPGA0_AnalogParameter4, 0x300, 0x0);
 rtl92e_set_bb_reg(dev, rFPGA0_AnalogParameter1, 0x18, 0x0);
 rtl92e_set_bb_reg(dev, rOFDM0_TRxPathEnable, 0xf, 0x0);
 rtl92e_set_bb_reg(dev, rOFDM1_TRxPathEnable, 0xf, 0x0);
 rtl92e_set_bb_reg(dev, rFPGA0_AnalogParameter1, 0x60, 0x0);
 rtl92e_set_bb_reg(dev, rFPGA0_AnalogParameter1, 0x4, 0x0);
 rtl92e_writeb(dev, ANAPAR_FOR_8192PciE, 0x07);

}
