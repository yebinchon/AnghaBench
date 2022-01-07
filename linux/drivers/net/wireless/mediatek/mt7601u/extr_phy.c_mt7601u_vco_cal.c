
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mt7601u_dev {int dummy; } ;


 int BIT (int) ;
 int msleep (int) ;
 int mt7601u_rf_set (struct mt7601u_dev*,int ,int,int ) ;
 int mt7601u_rf_wr (struct mt7601u_dev*,int ,int,int) ;

__attribute__((used)) static void mt7601u_vco_cal(struct mt7601u_dev *dev)
{
 mt7601u_rf_wr(dev, 0, 4, 0x0a);
 mt7601u_rf_wr(dev, 0, 5, 0x20);
 mt7601u_rf_set(dev, 0, 4, BIT(7));
 msleep(2);
}
