
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct config_field {int dummy; } ;


 int kfree (struct config_field*) ;

void xen_pcibk_config_field_free(struct config_field *field)
{
 kfree(field);
}
