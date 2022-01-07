
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {TYPE_2__* card; int ncci_head; } ;
typedef TYPE_1__ avmctrl_info ;
struct TYPE_8__ {int nr_controllers; int lock; TYPE_1__* ctrlinfo; } ;
typedef TYPE_2__ avmcard ;


 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 TYPE_1__* kcalloc (int,int,int ) ;
 int kfree (TYPE_2__*) ;
 TYPE_2__* kzalloc (int,int ) ;
 int spin_lock_init (int *) ;

avmcard *b1_alloc_card(int nr_controllers)
{
 avmcard *card;
 avmctrl_info *cinfo;
 int i;

 card = kzalloc(sizeof(*card), GFP_KERNEL);
 if (!card)
  return ((void*)0);

 cinfo = kcalloc(nr_controllers, sizeof(*cinfo), GFP_KERNEL);
 if (!cinfo) {
  kfree(card);
  return ((void*)0);
 }

 card->ctrlinfo = cinfo;
 for (i = 0; i < nr_controllers; i++) {
  INIT_LIST_HEAD(&cinfo[i].ncci_head);
  cinfo[i].card = card;
 }
 spin_lock_init(&card->lock);
 card->nr_controllers = nr_controllers;

 return card;
}
