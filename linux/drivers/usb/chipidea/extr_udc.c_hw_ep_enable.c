
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ci_hdrc {int dummy; } ;


 int ENDPTCTRL_RXE ;
 int ENDPTCTRL_RXR ;
 int ENDPTCTRL_RXS ;
 int ENDPTCTRL_RXT ;
 int ENDPTCTRL_TXE ;
 int ENDPTCTRL_TXR ;
 int ENDPTCTRL_TXS ;
 int ENDPTCTRL_TXT ;
 scalar_t__ OP_ENDPTCTRL ;
 int TX ;
 int __ffs (int) ;
 int hw_write (struct ci_hdrc*,scalar_t__,int,int) ;

__attribute__((used)) static int hw_ep_enable(struct ci_hdrc *ci, int num, int dir, int type)
{
 u32 mask, data;

 if (dir == TX) {
  mask = ENDPTCTRL_TXT;
  data = type << __ffs(mask);

  mask |= ENDPTCTRL_TXS;
  mask |= ENDPTCTRL_TXR;
  data |= ENDPTCTRL_TXR;
  mask |= ENDPTCTRL_TXE;
  data |= ENDPTCTRL_TXE;
 } else {
  mask = ENDPTCTRL_RXT;
  data = type << __ffs(mask);

  mask |= ENDPTCTRL_RXS;
  mask |= ENDPTCTRL_RXR;
  data |= ENDPTCTRL_RXR;
  mask |= ENDPTCTRL_RXE;
  data |= ENDPTCTRL_RXE;
 }
 hw_write(ci, OP_ENDPTCTRL + num, mask, data);
 return 0;
}
