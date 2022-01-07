
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pm860x_battery_info {int dummy; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int calc_ccnt (struct pm860x_battery_info*,int *) ;
 int ccnt_data ;

__attribute__((used)) static irqreturn_t pm860x_coulomb_handler(int irq, void *data)
{
 struct pm860x_battery_info *info = data;

 calc_ccnt(info, &ccnt_data);
 return IRQ_HANDLED;
}
