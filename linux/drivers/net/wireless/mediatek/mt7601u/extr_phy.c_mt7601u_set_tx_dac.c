
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct mt7601u_dev {int dummy; } ;


 int mt7601u_bbp_rmc (struct mt7601u_dev*,int,int,int) ;

void mt7601u_set_tx_dac(struct mt7601u_dev *dev, u8 dac)
{
 mt7601u_bbp_rmc(dev, 1, 0x18, dac << 3);
}
