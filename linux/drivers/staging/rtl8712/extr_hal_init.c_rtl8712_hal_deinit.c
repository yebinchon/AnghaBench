
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint ;
struct _adapter {int dummy; } ;


 scalar_t__ AFE_MISC ;
 scalar_t__ AFE_PLL_CTRL ;
 scalar_t__ LDOA15_CTRL ;
 scalar_t__ LDOV12D_CTRL ;
 scalar_t__ PMC_FSM ;
 scalar_t__ RF_CTRL ;
 scalar_t__ SPS0_CTRL ;
 scalar_t__ SYS_CLKR ;
 scalar_t__ SYS_FUNC_EN ;
 scalar_t__ SYS_ISO_CTRL ;
 int _SUCCESS ;
 int msleep (int) ;
 int r8712_write8 (struct _adapter*,scalar_t__,int) ;

uint rtl8712_hal_deinit(struct _adapter *padapter)
{
 r8712_write8(padapter, RF_CTRL, 0x00);

 msleep(20);

 r8712_write8(padapter, SYS_CLKR + 1, 0x38);
 r8712_write8(padapter, SYS_FUNC_EN + 1, 0x70);
 r8712_write8(padapter, PMC_FSM, 0x06);
 r8712_write8(padapter, SYS_ISO_CTRL, 0xF9);


 r8712_write8(padapter, SYS_ISO_CTRL + 1, 0xe8);
 r8712_write8(padapter, AFE_PLL_CTRL, 0x00);
 r8712_write8(padapter, LDOA15_CTRL, 0x54);
 r8712_write8(padapter, SYS_FUNC_EN + 1, 0x50);
 r8712_write8(padapter, LDOV12D_CTRL, 0x24);
 r8712_write8(padapter, AFE_MISC, 0x30);

 r8712_write8(padapter, SPS0_CTRL, 0x56);
 r8712_write8(padapter, SPS0_CTRL + 1, 0x43);
 return _SUCCESS;
}
