
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ci_hdrc {int dummy; } ;
typedef enum ci_hw_regs { ____Placeholder_ci_hw_regs } ci_hw_regs ;


 int EINVAL ;
 int ENDPTCTRL_RXR ;
 int ENDPTCTRL_RXS ;
 int ENDPTCTRL_TXR ;
 int ENDPTCTRL_TXS ;
 int OP_ENDPTCTRL ;
 int TX ;
 int hw_ep_get_halt (struct ci_hdrc*,int,int) ;
 int hw_write (struct ci_hdrc*,int,int,int) ;

__attribute__((used)) static int hw_ep_set_halt(struct ci_hdrc *ci, int num, int dir, int value)
{
 if (value != 0 && value != 1)
  return -EINVAL;

 do {
  enum ci_hw_regs reg = OP_ENDPTCTRL + num;
  u32 mask_xs = (dir == TX) ? ENDPTCTRL_TXS : ENDPTCTRL_RXS;
  u32 mask_xr = (dir == TX) ? ENDPTCTRL_TXR : ENDPTCTRL_RXR;


  hw_write(ci, reg, mask_xs|mask_xr,
     value ? mask_xs : mask_xr);
 } while (value != hw_ep_get_halt(ci, num, dir));

 return 0;
}
