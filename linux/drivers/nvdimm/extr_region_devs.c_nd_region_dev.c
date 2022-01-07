
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;
struct nd_region {struct device dev; } ;



struct device *nd_region_dev(struct nd_region *nd_region)
{
 if (!nd_region)
  return ((void*)0);
 return &nd_region->dev;
}
