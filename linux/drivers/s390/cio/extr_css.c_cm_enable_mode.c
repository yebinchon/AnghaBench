
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int umode_t ;
struct kobject {int dummy; } ;
struct attribute {int mode; } ;
struct TYPE_2__ {scalar_t__ secm; } ;


 TYPE_1__ css_chsc_characteristics ;

__attribute__((used)) static umode_t cm_enable_mode(struct kobject *kobj, struct attribute *attr,
         int index)
{
 return css_chsc_characteristics.secm ? attr->mode : 0;
}
