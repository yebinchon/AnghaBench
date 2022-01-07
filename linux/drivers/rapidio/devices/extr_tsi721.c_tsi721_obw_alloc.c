
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u64 ;
typedef scalar_t__ u32 ;
struct tsi721_obw_bar {scalar_t__ base; scalar_t__ size; int free; } ;
struct tsi721_ob_win {int active; scalar_t__ base; scalar_t__ size; struct tsi721_obw_bar* pbar; } ;
struct tsi721_device {int obwin_cnt; TYPE_1__* pdev; struct tsi721_ob_win* ob_win; } ;
struct TYPE_2__ {int dev; } ;


 scalar_t__ ALIGN (scalar_t__,scalar_t__) ;
 int EIO ;
 int ENOMEM ;
 int TSI721_IBWIN_NUM ;
 scalar_t__ TSI721_PC2SR_ZONES ;
 int tsi_err (int *,char*) ;

__attribute__((used)) static int
tsi721_obw_alloc(struct tsi721_device *priv, struct tsi721_obw_bar *pbar,
   u32 size, int *win_id)
{
 u64 win_base;
 u64 bar_base;
 u64 bar_end;
 u32 align;
 struct tsi721_ob_win *win;
 struct tsi721_ob_win *new_win = ((void*)0);
 int new_win_idx = -1;
 int i = 0;

 bar_base = pbar->base;
 bar_end = bar_base + pbar->size;
 win_base = bar_base;
 align = size/TSI721_PC2SR_ZONES;

 while (i < TSI721_IBWIN_NUM) {
  for (i = 0; i < TSI721_IBWIN_NUM; i++) {
   if (!priv->ob_win[i].active) {
    if (new_win == ((void*)0)) {
     new_win = &priv->ob_win[i];
     new_win_idx = i;
    }
    continue;
   }





   win = &priv->ob_win[i];

   if (win->base >= bar_base && win->base < bar_end) {
    if (win_base < (win->base + win->size) &&
      (win_base + size) > win->base) {

     win_base = win->base + win->size;
     win_base = ALIGN(win_base, align);
     break;
    }
   }
  }
 }

 if (win_base + size > bar_end)
  return -ENOMEM;

 if (!new_win) {
  tsi_err(&priv->pdev->dev, "OBW count tracking failed");
  return -EIO;
 }

 new_win->active = 1;
 new_win->base = win_base;
 new_win->size = size;
 new_win->pbar = pbar;
 priv->obwin_cnt--;
 pbar->free -= size;
 *win_id = new_win_idx;
 return 0;
}
