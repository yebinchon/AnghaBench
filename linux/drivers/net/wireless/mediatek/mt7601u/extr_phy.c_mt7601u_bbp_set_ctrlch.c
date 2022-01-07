
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mt7601u_dev {int dummy; } ;


 int mt7601u_bbp_rmc (struct mt7601u_dev*,int,int,int) ;

u32 mt7601u_bbp_set_ctrlch(struct mt7601u_dev *dev, bool below)
{
 return mt7601u_bbp_rmc(dev, 3, 0x20, below ? 0x20 : 0);
}
