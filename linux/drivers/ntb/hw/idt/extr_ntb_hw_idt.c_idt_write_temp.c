
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct idt_ntb_dev {int hwmon_mtx; } ;
typedef enum idt_temp_val { ____Placeholder_idt_temp_val } idt_temp_val ;


 unsigned int IDT_SW_TMPADJ ;
 unsigned int IDT_SW_TMPALARM ;



 int IDT_TMPALARM_IRQ_MASK ;
 int SET_FIELD (int ,int ,int ) ;
 int TMPADJ_OFFSET ;
 int TMPALARM_HTEMP ;
 int TMPALARM_LTEMP ;
 int idt_sw_read (struct idt_ntb_dev*,unsigned int) ;
 int idt_sw_write (struct idt_ntb_dev*,unsigned int,int) ;
 int idt_temp_get_fmt (long const) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static void idt_write_temp(struct idt_ntb_dev *ndev,
      const enum idt_temp_val type, const long val)
{
 unsigned int reg;
 u32 data;
 u8 fmt;


 fmt = idt_temp_get_fmt(val);

 mutex_lock(&ndev->hwmon_mtx);
 switch (type) {
 case 129:
  reg = IDT_SW_TMPALARM;
  data = SET_FIELD(TMPALARM_LTEMP, idt_sw_read(ndev, reg), fmt) &
   ~IDT_TMPALARM_IRQ_MASK;
  break;
 case 130:
  reg = IDT_SW_TMPALARM;
  data = SET_FIELD(TMPALARM_HTEMP, idt_sw_read(ndev, reg), fmt) &
   ~IDT_TMPALARM_IRQ_MASK;
  break;
 case 128:
  reg = IDT_SW_TMPADJ;
  data = SET_FIELD(TMPADJ_OFFSET, idt_sw_read(ndev, reg), fmt);
  break;
 default:
  goto inval_spin_unlock;
 }

 idt_sw_write(ndev, reg, data);

inval_spin_unlock:
 mutex_unlock(&ndev->hwmon_mtx);
}
