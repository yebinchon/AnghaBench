
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct regulator_init_data {int dummy; } ;
struct regulator_desc {int dummy; } ;
struct regulator_config {int dummy; } ;
struct device_node {int dummy; } ;
struct device {int dummy; } ;



__attribute__((used)) static inline struct regulator_init_data *
regulator_of_get_init_data(struct device *dev,
      const struct regulator_desc *desc,
      struct regulator_config *config,
      struct device_node **node)
{
 return ((void*)0);
}
