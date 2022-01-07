
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct regulator_dev {TYPE_2__* desc; TYPE_1__* constraints; } ;
struct TYPE_4__ {char const* name; } ;
struct TYPE_3__ {char const* name; } ;



const char *rdev_get_name(struct regulator_dev *rdev)
{
 if (rdev->constraints && rdev->constraints->name)
  return rdev->constraints->name;
 else if (rdev->desc->name)
  return rdev->desc->name;
 else
  return "";
}
