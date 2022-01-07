
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sbs_info {int dummy; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int IRQ_NONE ;
 int sbs_check_state (struct sbs_info*) ;

__attribute__((used)) static irqreturn_t sbs_irq_thread(int irq, void *data)
{
 struct sbs_info *chip = data;
 int ret;

 ret = sbs_check_state(chip);

 return ret ? IRQ_HANDLED : IRQ_NONE;
}
