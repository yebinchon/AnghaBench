
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mt7601u_dev {int dummy; } ;


 int mt7601u_current_tx_power (struct mt7601u_dev*) ;

__attribute__((used)) static bool mt7601u_use_hvga(struct mt7601u_dev *dev)
{
 return !(mt7601u_current_tx_power(dev) > 20);
}
