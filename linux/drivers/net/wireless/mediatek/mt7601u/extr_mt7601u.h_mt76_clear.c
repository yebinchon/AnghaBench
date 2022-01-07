
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mt7601u_dev {int dummy; } ;


 int mt76_rmw (struct mt7601u_dev*,int ,int ,int ) ;

__attribute__((used)) static inline u32 mt76_clear(struct mt7601u_dev *dev, u32 offset, u32 val)
{
 return mt76_rmw(dev, offset, val, 0);
}
