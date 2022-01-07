
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct mt7601u_dev {int debugfs_reg; } ;


 int mt76_wr (struct mt7601u_dev*,int ,int ) ;

__attribute__((used)) static int
mt76_reg_set(void *data, u64 val)
{
 struct mt7601u_dev *dev = data;

 mt76_wr(dev, dev->debugfs_reg, val);
 return 0;
}
