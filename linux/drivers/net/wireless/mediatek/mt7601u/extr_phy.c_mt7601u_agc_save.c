
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mt7601u_dev {int agc_save; } ;


 int mt7601u_bbp_rr (struct mt7601u_dev*,int) ;

void mt7601u_agc_save(struct mt7601u_dev *dev)
{
 dev->agc_save = mt7601u_bbp_rr(dev, 66);
}
