
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {void (* function ) (struct timer_list*) ;scalar_t__ expires; } ;
struct asd_ascb {void (* tasklet_complete ) (struct asd_ascb*,struct done_list_struct*) ;int uldd_timer; TYPE_1__ timer; int ha; } ;


 scalar_t__ AIC94XX_SCB_TIMEOUT ;
 int add_timer (TYPE_1__*) ;
 int asd_post_ascb_list (int ,struct asd_ascb*,int) ;
 int del_timer (TYPE_1__*) ;
 scalar_t__ jiffies ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int asd_enqueue_internal(struct asd_ascb *ascb,
  void (*tasklet_complete)(struct asd_ascb *,
      struct done_list_struct *),
    void (*timed_out)(struct timer_list *t))
{
 int res;

 ascb->tasklet_complete = tasklet_complete;
 ascb->uldd_timer = 1;

 ascb->timer.function = timed_out;
 ascb->timer.expires = jiffies + AIC94XX_SCB_TIMEOUT;

 add_timer(&ascb->timer);

 res = asd_post_ascb_list(ascb->ha, ascb, 1);
 if (unlikely(res))
  del_timer(&ascb->timer);
 return res;
}
