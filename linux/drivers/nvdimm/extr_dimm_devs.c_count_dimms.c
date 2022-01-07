
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;


 scalar_t__ is_nvdimm (struct device*) ;

__attribute__((used)) static int count_dimms(struct device *dev, void *c)
{
 int *count = c;

 if (is_nvdimm(dev))
  (*count)++;
 return 0;
}
