
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct reg_table {int n; int regs; } ;
struct mt7601u_dev {size_t temp_mode; size_t bw; } ;


 int EINVAL ;
 int MT_MCU_MEMMAP_BBP ;
 size_t MT_TEMP_MODE_LOW ;
 scalar_t__ WARN_ON (int) ;
 struct reg_table** bbp_mode_table ;
 int mt7601u_write_reg_pairs (struct mt7601u_dev*,int ,int ,int ) ;

__attribute__((used)) static int mt7601u_load_bbp_temp_table_bw(struct mt7601u_dev *dev)
{
 const struct reg_table *t;

 if (WARN_ON(dev->temp_mode > MT_TEMP_MODE_LOW))
  return -EINVAL;

 t = &bbp_mode_table[dev->temp_mode][dev->bw];

 return mt7601u_write_reg_pairs(dev, MT_MCU_MEMMAP_BBP, t->regs, t->n);
}
