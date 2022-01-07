
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct _adapter {scalar_t__ pid; } ;


 int DBG_8712 (char*) ;
 int GPIOMUX_EN ;
 int GPIOSEL_GPIO ;
 int GPIO_CTRL ;
 int GPIO_IO_SEL ;
 int HAL_8192S_HW_GPIO_WPS_BIT ;
 int MAC_PINMUX_CTRL ;
 int SIGUSR1 ;
 int find_vpid (scalar_t__) ;
 int kill_pid (int ,int ,int) ;
 int r8712_read8 (struct _adapter*,int ) ;
 int r8712_write8 (struct _adapter*,int ,int) ;

__attribute__((used)) static void check_hw_pbc(struct _adapter *padapter)
{
 u8 tmp1byte;

 r8712_write8(padapter, MAC_PINMUX_CTRL, (GPIOMUX_EN | GPIOSEL_GPIO));
 tmp1byte = r8712_read8(padapter, GPIO_IO_SEL);
 tmp1byte &= ~(HAL_8192S_HW_GPIO_WPS_BIT);
 r8712_write8(padapter, GPIO_IO_SEL, tmp1byte);
 tmp1byte = r8712_read8(padapter, GPIO_CTRL);
 if (tmp1byte == 0xff)
  return;
 if (tmp1byte & HAL_8192S_HW_GPIO_WPS_BIT) {



  DBG_8712("CheckPbcGPIO - PBC is pressed !!!!\n");



  if (padapter->pid == 0)
   return;
  kill_pid(find_vpid(padapter->pid), SIGUSR1, 1);
 }
}
