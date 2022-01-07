
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u8 ;
struct rt_channel_info {int dummy; } ;
struct p2p_reg_class {size_t channels; scalar_t__* channel; scalar_t__ reg_class; } ;
struct p2p_oper_class_map {int member_0; int member_1; int member_2; int member_3; int member_4; scalar_t__ min_chan; scalar_t__ max_chan; int inc; scalar_t__ bw; scalar_t__ op_class; int member_5; } ;
struct p2p_channels {int reg_classes; struct p2p_reg_class* reg_class; } ;
struct TYPE_2__ {int cbw40_enable; int ht_enable; } ;
struct adapter {TYPE_1__ registrypriv; } ;


 int BIT (int) ;
 int BW20 ;
 scalar_t__ BW40MINUS ;
 scalar_t__ BW40PLUS ;
 int IEEE80211G ;
 int has_channel (struct rt_channel_info*,scalar_t__,scalar_t__) ;

__attribute__((used)) static void init_channel_list(struct adapter *padapter,
         struct rt_channel_info *channel_set,
         u8 chanset_size,
         struct p2p_channels *channel_list)
{
 struct p2p_oper_class_map op_class[] = {
  { IEEE80211G, 81, 1, 13, 1, BW20 },
  { IEEE80211G, 82, 14, 14, 1, BW20 },
  { -1, 0, 0, 0, 0, BW20 }
 };

 int cla, op;

 cla = 0;

 for (op = 0; op_class[op].op_class; op++) {
  u8 ch;
  struct p2p_oper_class_map *o = &op_class[op];
  struct p2p_reg_class *reg = ((void*)0);

  for (ch = o->min_chan; ch <= o->max_chan; ch += o->inc) {
   if (!has_channel(channel_set, chanset_size, ch))
    continue;

   if (!padapter->registrypriv.ht_enable && o->inc == 8)
    continue;

   if ((0 == (padapter->registrypriv.cbw40_enable & BIT(1))) &&
       ((o->bw == BW40MINUS) || (o->bw == BW40PLUS)))
    continue;

   if (reg == ((void*)0)) {
    reg = &channel_list->reg_class[cla];
    cla++;
    reg->reg_class = o->op_class;
    reg->channels = 0;
   }
   reg->channel[reg->channels] = ch;
   reg->channels++;
  }
 }
 channel_list->reg_classes = cla;
}
