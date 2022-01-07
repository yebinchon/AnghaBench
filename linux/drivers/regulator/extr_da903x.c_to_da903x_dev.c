
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct regulator_dev {int dummy; } ;
struct device {int dummy; } ;
struct TYPE_4__ {TYPE_1__* parent; } ;
struct TYPE_3__ {struct device* parent; } ;


 TYPE_2__* rdev_get_dev (struct regulator_dev*) ;

__attribute__((used)) static inline struct device *to_da903x_dev(struct regulator_dev *rdev)
{
 return rdev_get_dev(rdev)->parent->parent;
}
