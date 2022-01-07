
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef size_t u_int ;
struct capi_ctr {scalar_t__ driverdata; } ;
struct TYPE_4__ {int capi_ctrl; int version; TYPE_2__* card; } ;
typedef TYPE_1__ avmctrl_info ;
struct TYPE_5__ {size_t nr_controllers; scalar_t__ nlogcontr; TYPE_1__* ctrlinfo; int lock; } ;
typedef TYPE_2__ avmcard ;


 int c4_reset (TYPE_2__*) ;
 int capi_ctr_down (int *) ;
 int memset (int ,int ,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void c4_reset_ctr(struct capi_ctr *ctrl)
{
 avmcard *card = ((avmctrl_info *)(ctrl->driverdata))->card;
 avmctrl_info *cinfo;
 u_int i;
 unsigned long flags;

 spin_lock_irqsave(&card->lock, flags);

 c4_reset(card);

 spin_unlock_irqrestore(&card->lock, flags);

 for (i = 0; i < card->nr_controllers; i++) {
  cinfo = &card->ctrlinfo[i];
  memset(cinfo->version, 0, sizeof(cinfo->version));
  capi_ctr_down(&cinfo->capi_ctrl);
 }
 card->nlogcontr = 0;
}
