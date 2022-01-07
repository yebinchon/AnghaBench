
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct mt7601u_dev {int dummy; } ;


 int mt7601u_agc_default (struct mt7601u_dev*) ;
 int mt7601u_bbp_wr (struct mt7601u_dev*,int,int ) ;

__attribute__((used)) static void mt7601u_agc_reset(struct mt7601u_dev *dev)
{
 u8 agc = mt7601u_agc_default(dev);

 mt7601u_bbp_wr(dev, 66, agc);
}
