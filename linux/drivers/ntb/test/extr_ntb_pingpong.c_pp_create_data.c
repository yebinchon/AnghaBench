
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int function; } ;
struct pp_ctx {TYPE_1__ timer; int lock; int count; struct ntb_dev* ntb; } ;
struct ntb_dev {int dev; } ;


 int CLOCK_MONOTONIC ;
 int ENOMEM ;
 struct pp_ctx* ERR_PTR (int ) ;
 int GFP_KERNEL ;
 int HRTIMER_MODE_REL ;
 int atomic_set (int *,int ) ;
 struct pp_ctx* devm_kzalloc (int *,int,int ) ;
 int hrtimer_init (TYPE_1__*,int ,int ) ;
 int pp_timer_func ;
 int spin_lock_init (int *) ;

__attribute__((used)) static struct pp_ctx *pp_create_data(struct ntb_dev *ntb)
{
 struct pp_ctx *pp;

 pp = devm_kzalloc(&ntb->dev, sizeof(*pp), GFP_KERNEL);
 if (!pp)
  return ERR_PTR(-ENOMEM);

 pp->ntb = ntb;
 atomic_set(&pp->count, 0);
 spin_lock_init(&pp->lock);
 hrtimer_init(&pp->timer, CLOCK_MONOTONIC, HRTIMER_MODE_REL);
 pp->timer.function = pp_timer_func;

 return pp;
}
