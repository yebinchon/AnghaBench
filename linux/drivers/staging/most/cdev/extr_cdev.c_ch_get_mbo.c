
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mbo {int dummy; } ;
struct comp_channel {int fifo; int channel_id; int iface; } ;
struct TYPE_2__ {int cc; } ;


 TYPE_1__ comp ;
 int kfifo_in (int *,struct mbo**,int) ;
 int kfifo_peek (int *,struct mbo**) ;
 struct mbo* most_get_mbo (int ,int ,int *) ;

__attribute__((used)) static inline struct mbo *ch_get_mbo(struct comp_channel *c, struct mbo **mbo)
{
 if (!kfifo_peek(&c->fifo, mbo)) {
  *mbo = most_get_mbo(c->iface, c->channel_id, &comp.cc);
  if (*mbo)
   kfifo_in(&c->fifo, mbo, 1);
 }
 return *mbo;
}
