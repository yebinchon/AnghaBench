
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mt7601u_dev {int agc_save; } ;


 int mt7601u_bbp_wr (struct mt7601u_dev*,int,int ) ;

void mt7601u_agc_restore(struct mt7601u_dev *dev)
{
 mt7601u_bbp_wr(dev, 66, dev->agc_save);
}
