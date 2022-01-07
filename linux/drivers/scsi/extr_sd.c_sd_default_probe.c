
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kobject {int dummy; } ;
typedef int dev_t ;



__attribute__((used)) static struct kobject *sd_default_probe(dev_t devt, int *partno, void *data)
{
 return ((void*)0);
}
