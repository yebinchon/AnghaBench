
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ulong ;
struct qla27xx_fwdt_template {int template_size; } ;



ulong
qla27xx_fwdt_template_size(void *p)
{
 struct qla27xx_fwdt_template *tmp = p;

 return tmp->template_size;
}
