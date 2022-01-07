
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct comp_channel {int channel_id; int iface; } ;
struct TYPE_2__ {int cc; } ;


 scalar_t__ channel_has_mbo (int ,int ,int *) ;
 TYPE_1__ comp ;

__attribute__((used)) static inline bool ch_has_mbo(struct comp_channel *c)
{
 return channel_has_mbo(c->iface, c->channel_id, &comp.cc) > 0;
}
