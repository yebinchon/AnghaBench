
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ci_hdrc {int dummy; } ;


 int ENDPTCTRL_RXS ;
 int ENDPTCTRL_TXS ;
 scalar_t__ OP_ENDPTCTRL ;
 int TX ;
 scalar_t__ hw_read (struct ci_hdrc*,scalar_t__,int ) ;

__attribute__((used)) static int hw_ep_get_halt(struct ci_hdrc *ci, int num, int dir)
{
 u32 mask = (dir == TX) ? ENDPTCTRL_TXS : ENDPTCTRL_RXS;

 return hw_read(ci, OP_ENDPTCTRL + num, mask) ? 1 : 0;
}
