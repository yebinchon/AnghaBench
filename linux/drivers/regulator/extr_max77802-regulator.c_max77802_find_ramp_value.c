
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct regulator_dev {TYPE_1__* desc; int dev; } ;
struct TYPE_2__ {int name; } ;


 int dev_warn (int *,char*,int ,unsigned int) ;

__attribute__((used)) static int max77802_find_ramp_value(struct regulator_dev *rdev,
        const unsigned int limits[], int size,
        unsigned int ramp_delay)
{
 int i;

 for (i = 0; i < size; i++) {
  if (ramp_delay <= limits[i])
   return i;
 }


 dev_warn(&rdev->dev, "%s: ramp_delay: %d not supported, setting 100000\n",
   rdev->desc->name, ramp_delay);
 return size - 1;
}
