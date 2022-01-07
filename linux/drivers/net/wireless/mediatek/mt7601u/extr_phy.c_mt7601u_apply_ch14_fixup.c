
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct mt7601u_rate_power {TYPE_1__* cck; } ;
struct mt7601u_dev {scalar_t__ bw; TYPE_2__* ee; } ;
struct TYPE_4__ {scalar_t__* real_cck_bw20; struct mt7601u_rate_power power_rate_table; } ;
struct TYPE_3__ {scalar_t__ bw20; } ;


 scalar_t__ MT_BW_20 ;
 int mt7601u_bbp_rmw (struct mt7601u_dev*,int,int,int ) ;
 int mt7601u_bbp_wr (struct mt7601u_dev*,int,int) ;

__attribute__((used)) static void mt7601u_apply_ch14_fixup(struct mt7601u_dev *dev, int hw_chan)
{
 struct mt7601u_rate_power *t = &dev->ee->power_rate_table;

 if (hw_chan != 14 || dev->bw != MT_BW_20) {
  mt7601u_bbp_rmw(dev, 4, 0x20, 0);
  mt7601u_bbp_wr(dev, 178, 0xff);

  t->cck[0].bw20 = dev->ee->real_cck_bw20[0];
  t->cck[1].bw20 = dev->ee->real_cck_bw20[1];
 } else {
  mt7601u_bbp_wr(dev, 4, 0x60);
  mt7601u_bbp_wr(dev, 178, 0);


  t->cck[0].bw20 = dev->ee->real_cck_bw20[0] - 2;
  t->cck[1].bw20 = dev->ee->real_cck_bw20[1] - 2;
 }
}
