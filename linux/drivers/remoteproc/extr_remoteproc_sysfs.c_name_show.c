
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rproc {char* name; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int sprintf (char*,char*,char*) ;
 struct rproc* to_rproc (struct device*) ;

__attribute__((used)) static ssize_t name_show(struct device *dev, struct device_attribute *attr,
    char *buf)
{
 struct rproc *rproc = to_rproc(dev);

 return sprintf(buf, "%s\n", rproc->name);
}
