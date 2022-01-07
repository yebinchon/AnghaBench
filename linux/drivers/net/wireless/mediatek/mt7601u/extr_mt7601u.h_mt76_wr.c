
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mt7601u_dev {int dummy; } ;


 void mt7601u_wr (struct mt7601u_dev*,int ,int ) ;

__attribute__((used)) static inline void mt76_wr(struct mt7601u_dev *dev, u32 offset, u32 val)
{
 return mt7601u_wr(dev, offset, val);
}
