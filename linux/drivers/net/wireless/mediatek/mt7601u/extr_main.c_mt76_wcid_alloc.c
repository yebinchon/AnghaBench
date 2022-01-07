
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mt7601u_dev {int * wcid_mask; } ;


 int ARRAY_SIZE (int *) ;
 int BIT (int) ;
 int BITS_PER_LONG ;
 int ffs (int ) ;

__attribute__((used)) static int
mt76_wcid_alloc(struct mt7601u_dev *dev)
{
 int i, idx = 0;

 for (i = 0; i < ARRAY_SIZE(dev->wcid_mask); i++) {
  idx = ffs(~dev->wcid_mask[i]);
  if (!idx)
   continue;

  idx--;
  dev->wcid_mask[i] |= BIT(idx);
  break;
 }

 idx = i * BITS_PER_LONG + idx;
 if (idx > 119)
  return -1;

 return idx;
}
