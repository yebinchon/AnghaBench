
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u64 ;
typedef scalar_t__ u16 ;
struct tsi721_ob_win {int active; scalar_t__ destid; scalar_t__ rstart; scalar_t__ base; scalar_t__ size; TYPE_2__* pbar; } ;
struct tsi721_device {int obwin_cnt; scalar_t__ regs; TYPE_1__* pdev; struct tsi721_ob_win* ob_win; } ;
struct rio_mport {struct tsi721_device* priv; } ;
struct TYPE_4__ {int free; } ;
struct TYPE_3__ {int dev; } ;


 int OBW ;
 scalar_t__ TSI721_OBWINLB (int) ;
 int TSI721_OBWIN_NUM ;
 int iowrite32 (int ,scalar_t__) ;
 int tsi_debug (int ,int *,char*,int,scalar_t__) ;

__attribute__((used)) static void tsi721_unmap_outb_win(struct rio_mport *mport,
      u16 destid, u64 rstart)
{
 struct tsi721_device *priv = mport->priv;
 struct tsi721_ob_win *ob_win;
 int i;

 tsi_debug(OBW, &priv->pdev->dev, "did=%d ra=0x%llx", destid, rstart);

 for (i = 0; i < TSI721_OBWIN_NUM; i++) {
  ob_win = &priv->ob_win[i];

  if (ob_win->active &&
      ob_win->destid == destid && ob_win->rstart == rstart) {
   tsi_debug(OBW, &priv->pdev->dev,
      "free OBW%d @%llx", i, ob_win->base);
   ob_win->active = 0;
   iowrite32(0, priv->regs + TSI721_OBWINLB(i));
   ob_win->pbar->free += ob_win->size;
   priv->obwin_cnt++;
   break;
  }
 }
}
