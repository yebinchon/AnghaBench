
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct regulator_dev {TYPE_1__* desc; } ;
struct TYPE_2__ {int* volt_table; } ;



__attribute__((used)) static int tps65910_get_voltage_vdd3(struct regulator_dev *dev)
{
 return dev->desc->volt_table[0];
}
