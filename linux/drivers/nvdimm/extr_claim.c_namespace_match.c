
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;


 int dev_name (struct device*) ;
 scalar_t__ strcmp (char*,int ) ;

__attribute__((used)) static int namespace_match(struct device *dev, void *data)
{
 char *name = data;

 return strcmp(name, dev_name(dev)) == 0;
}
