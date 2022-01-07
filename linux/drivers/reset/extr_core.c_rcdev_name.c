
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct reset_controller_dev {TYPE_1__* of_node; scalar_t__ dev; } ;
struct TYPE_2__ {char const* full_name; } ;


 char const* dev_name (scalar_t__) ;

__attribute__((used)) static const char *rcdev_name(struct reset_controller_dev *rcdev)
{
 if (rcdev->dev)
  return dev_name(rcdev->dev);

 if (rcdev->of_node)
  return rcdev->of_node->full_name;

 return ((void*)0);
}
