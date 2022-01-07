
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tsi721_ib_win {int active; } ;
struct tsi721_device {scalar_t__ regs; struct tsi721_ib_win* ib_win; } ;


 scalar_t__ TSI721_IBWIN_LB (int) ;
 int TSI721_IBWIN_NUM ;
 int iowrite32 (int ,scalar_t__) ;

__attribute__((used)) static void tsi721_close_sr2pc_mapping(struct tsi721_device *priv)
{
 struct tsi721_ib_win *ib_win;
 int i;


 for (i = 0; i < TSI721_IBWIN_NUM; i++) {
  ib_win = &priv->ib_win[i];
  if (ib_win->active) {
   iowrite32(0, priv->regs + TSI721_IBWIN_LB(i));
   ib_win->active = 0;
  }
 }
}
