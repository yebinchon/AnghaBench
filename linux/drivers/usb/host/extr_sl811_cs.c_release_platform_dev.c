
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int * parent; } ;


 int dev_dbg (struct device*,char*) ;

__attribute__((used)) static void release_platform_dev(struct device * dev)
{
 dev_dbg(dev, "sl811_cs platform_dev release\n");
 dev->parent = ((void*)0);
}
