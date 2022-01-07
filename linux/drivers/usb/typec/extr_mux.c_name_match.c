
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;


 int dev_name (struct device*) ;
 int strcmp (char const*,int ) ;

__attribute__((used)) static int name_match(struct device *dev, const void *name)
{
 return !strcmp((const char *)name, dev_name(dev));
}
