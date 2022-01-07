
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ direction; } ;
struct most_channel {int mbo_nq_level; TYPE_1__ cfg; } ;
struct mbo {struct most_channel* context; } ;


 scalar_t__ MOST_CH_TX ;
 int arm_mbo (struct mbo*) ;
 int atomic_inc (int *) ;
 int nq_hdm_mbo (struct mbo*) ;

void most_put_mbo(struct mbo *mbo)
{
 struct most_channel *c = mbo->context;

 if (c->cfg.direction == MOST_CH_TX) {
  arm_mbo(mbo);
  return;
 }
 nq_hdm_mbo(mbo);
 atomic_inc(&c->mbo_nq_level);
}
