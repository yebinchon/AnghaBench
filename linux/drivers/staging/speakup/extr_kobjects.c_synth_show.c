
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct kobject {int dummy; } ;
struct kobj_attribute {int dummy; } ;
typedef int ssize_t ;
struct TYPE_2__ {char* name; } ;


 int sprintf (char*,char*,char*) ;
 TYPE_1__* synth ;

__attribute__((used)) static ssize_t synth_show(struct kobject *kobj, struct kobj_attribute *attr,
     char *buf)
{
 int rv;

 if (!synth)
  rv = sprintf(buf, "%s\n", "none");
 else
  rv = sprintf(buf, "%s\n", synth->name);
 return rv;
}
