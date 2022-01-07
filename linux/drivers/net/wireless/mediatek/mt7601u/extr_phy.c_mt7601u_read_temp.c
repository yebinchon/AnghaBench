
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct mt7601u_dev {int dummy; } ;
typedef int s8 ;


 int BBP_R47_F_TEMP ;
 int mt7601u_bbp_r47_get (struct mt7601u_dev*,int,int ) ;
 int mt7601u_bbp_rmw (struct mt7601u_dev*,int,int,int) ;
 int mt7601u_bbp_rr (struct mt7601u_dev*,int) ;
 int trace_read_temp (struct mt7601u_dev*,int ) ;

__attribute__((used)) static s8 mt7601u_read_temp(struct mt7601u_dev *dev)
{
 int i;
 u8 val;
 s8 temp;

 val = mt7601u_bbp_rmw(dev, 47, 0x7f, 0x10);


 for (i = 100; i && (val & 0x10); i--)
  val = mt7601u_bbp_rr(dev, 47);

 temp = mt7601u_bbp_r47_get(dev, val, BBP_R47_F_TEMP);

 trace_read_temp(dev, temp);
 return temp;
}
