
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct mt7601u_dev {int debugfs_reg; } ;


 int mt76_rr (struct mt7601u_dev*,int ) ;

__attribute__((used)) static int
mt76_reg_get(void *data, u64 *val)
{
 struct mt7601u_dev *dev = data;

 *val = mt76_rr(dev, dev->debugfs_reg);
 return 0;
}
