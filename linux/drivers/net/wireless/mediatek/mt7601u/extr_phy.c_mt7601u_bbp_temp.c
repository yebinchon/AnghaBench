
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct reg_table {int n; int regs; } ;
struct mt7601u_dev {int temp_mode; size_t bw; } ;


 int MT_MCU_MEMMAP_BBP ;
 struct reg_table** bbp_mode_table ;
 int mt7601u_write_reg_pairs (struct mt7601u_dev*,int ,int ,int ) ;
 int trace_temp_mode (struct mt7601u_dev*,int) ;

__attribute__((used)) static int mt7601u_bbp_temp(struct mt7601u_dev *dev, int mode, const char *name)
{
 const struct reg_table *t;
 int ret;

 if (dev->temp_mode == mode)
  return 0;

 dev->temp_mode = mode;
 trace_temp_mode(dev, mode);

 t = bbp_mode_table[dev->temp_mode];
 ret = mt7601u_write_reg_pairs(dev, MT_MCU_MEMMAP_BBP,
          t[2].regs, t[2].n);
 if (ret)
  return ret;

 return mt7601u_write_reg_pairs(dev, MT_MCU_MEMMAP_BBP,
           t[dev->bw].regs, t[dev->bw].n);
}
