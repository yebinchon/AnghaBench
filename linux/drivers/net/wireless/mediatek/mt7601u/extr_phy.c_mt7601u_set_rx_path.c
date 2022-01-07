
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct mt7601u_dev {int dummy; } ;


 int mt7601u_bbp_rmw (struct mt7601u_dev*,int,int,int) ;

void mt7601u_set_rx_path(struct mt7601u_dev *dev, u8 path)
{
 mt7601u_bbp_rmw(dev, 3, 0x18, path << 3);
}
