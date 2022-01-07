
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mt7601u_dev {int dummy; } ;


 int mt7601u_chip_onoff (struct mt7601u_dev*,int,int) ;

__attribute__((used)) static void mt7601u_stop_hardware(struct mt7601u_dev *dev)
{
 mt7601u_chip_onoff(dev, 0, 0);
}
