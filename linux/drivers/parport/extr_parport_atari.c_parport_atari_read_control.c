
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct parport {int dummy; } ;
struct TYPE_2__ {int rd_data_reg_sel; } ;


 unsigned char PARPORT_CONTROL_STROBE ;
 int local_irq_restore (unsigned long) ;
 int local_irq_save (unsigned long) ;
 TYPE_1__ sound_ym ;

__attribute__((used)) static unsigned char
parport_atari_read_control(struct parport *p)
{
 unsigned long flags;
 unsigned char control = 0;

 local_irq_save(flags);
 sound_ym.rd_data_reg_sel = 14;
 if (!(sound_ym.rd_data_reg_sel & (1 << 5)))
  control = PARPORT_CONTROL_STROBE;
 local_irq_restore(flags);
 return control;
}
