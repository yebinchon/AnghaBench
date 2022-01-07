
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct parport {int dummy; } ;
struct TYPE_2__ {int rd_data_reg_sel; unsigned char wd_data; } ;


 int local_irq_restore (unsigned long) ;
 int local_irq_save (unsigned long) ;
 TYPE_1__ sound_ym ;

__attribute__((used)) static void
parport_atari_write_data(struct parport *p, unsigned char data)
{
 unsigned long flags;

 local_irq_save(flags);
 sound_ym.rd_data_reg_sel = 15;
 sound_ym.wd_data = data;
 local_irq_restore(flags);
}
