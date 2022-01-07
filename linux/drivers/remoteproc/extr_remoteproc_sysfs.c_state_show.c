
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rproc {unsigned int state; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 unsigned int RPROC_LAST ;
 char** rproc_state_string ;
 int sprintf (char*,char*,char*) ;
 struct rproc* to_rproc (struct device*) ;

__attribute__((used)) static ssize_t state_show(struct device *dev, struct device_attribute *attr,
     char *buf)
{
 struct rproc *rproc = to_rproc(dev);
 unsigned int state;

 state = rproc->state > RPROC_LAST ? RPROC_LAST : rproc->state;
 return sprintf(buf, "%s\n", rproc_state_string[state]);
}
