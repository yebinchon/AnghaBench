
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ci_hdrc {int dummy; } ;


 int ENDPTCTRL_RXE ;
 int ENDPTCTRL_TXE ;
 scalar_t__ OP_ENDPTCTRL ;
 int TX ;
 int hw_write (struct ci_hdrc*,scalar_t__,int ,int ) ;

__attribute__((used)) static int hw_ep_disable(struct ci_hdrc *ci, int num, int dir)
{
 hw_write(ci, OP_ENDPTCTRL + num,
   (dir == TX) ? ENDPTCTRL_TXE : ENDPTCTRL_RXE, 0);
 return 0;
}
