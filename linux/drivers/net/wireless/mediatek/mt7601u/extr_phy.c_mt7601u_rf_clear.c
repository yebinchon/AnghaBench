
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct mt7601u_dev {int dummy; } ;


 int mt7601u_rf_rmw (struct mt7601u_dev*,int ,int ,int ,int ) ;

__attribute__((used)) static int
mt7601u_rf_clear(struct mt7601u_dev *dev, u8 bank, u8 offset, u8 mask)
{
 return mt7601u_rf_rmw(dev, bank, offset, mask, 0);
}
