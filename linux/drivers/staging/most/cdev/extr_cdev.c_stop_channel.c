
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mbo {int dummy; } ;
struct kfifo {int dummy; } ;
struct comp_channel {int channel_id; int iface; int fifo; } ;
struct TYPE_2__ {int cc; } ;


 TYPE_1__ comp ;
 scalar_t__ kfifo_out (struct kfifo*,struct mbo**,int) ;
 int most_put_mbo (struct mbo*) ;
 int most_stop_channel (int ,int ,int *) ;

__attribute__((used)) static void stop_channel(struct comp_channel *c)
{
 struct mbo *mbo;

 while (kfifo_out((struct kfifo *)&c->fifo, &mbo, 1))
  most_put_mbo(mbo);
 most_stop_channel(c->iface, c->channel_id, &comp.cc);
}
