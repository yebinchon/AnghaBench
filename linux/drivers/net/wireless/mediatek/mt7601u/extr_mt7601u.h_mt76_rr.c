
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mt7601u_dev {int dummy; } ;


 int mt7601u_rr (struct mt7601u_dev*,int ) ;

__attribute__((used)) static inline u32 mt76_rr(struct mt7601u_dev *dev, u32 offset)
{
 return mt7601u_rr(dev, offset);
}
