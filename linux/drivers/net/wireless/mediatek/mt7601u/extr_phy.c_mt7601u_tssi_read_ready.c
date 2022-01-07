
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mt7601u_dev {int dummy; } ;


 int mt7601u_bbp_rr (struct mt7601u_dev*,int) ;

__attribute__((used)) static bool mt7601u_tssi_read_ready(struct mt7601u_dev *dev)
{
 return !(mt7601u_bbp_rr(dev, 47) & 0x10);
}
