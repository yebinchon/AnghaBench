
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct devm_of_regulator_matches {int num_matches; TYPE_1__* matches; } ;
struct device {int dummy; } ;
struct TYPE_2__ {int of_node; } ;


 int of_node_put (int ) ;

__attribute__((used)) static void devm_of_regulator_put_matches(struct device *dev, void *res)
{
 struct devm_of_regulator_matches *devm_matches = res;
 int i;

 for (i = 0; i < devm_matches->num_matches; i++)
  of_node_put(devm_matches->matches[i].of_node);
}
