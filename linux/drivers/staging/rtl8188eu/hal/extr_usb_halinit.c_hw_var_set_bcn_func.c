
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
typedef int u32 ;
struct adapter {int dummy; } ;


 int EN_BCN_FUNCTION ;
 int EN_TXBCN_RPT ;
 int REG_BCN_CTRL ;
 int usb_read8 (struct adapter*,int ) ;
 int usb_write8 (struct adapter*,int ,int) ;

__attribute__((used)) static void hw_var_set_bcn_func(struct adapter *Adapter, u8 variable, u8 *val)
{
 u32 bcn_ctrl_reg;

 bcn_ctrl_reg = REG_BCN_CTRL;

 if (*((u8 *)val))
  usb_write8(Adapter, bcn_ctrl_reg, (EN_BCN_FUNCTION | EN_TXBCN_RPT));
 else
  usb_write8(Adapter, bcn_ctrl_reg, usb_read8(Adapter, bcn_ctrl_reg) & (~(EN_BCN_FUNCTION | EN_TXBCN_RPT)));
}
