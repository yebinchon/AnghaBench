
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct megasas_instance {scalar_t__ PlasmaFW111; } ;


 int megasas_get_ld_vf_affiliation_111 (struct megasas_instance*,int) ;
 int megasas_get_ld_vf_affiliation_12 (struct megasas_instance*,int) ;

__attribute__((used)) static int megasas_get_ld_vf_affiliation(struct megasas_instance *instance,
 int initial)
{
 int retval;

 if (instance->PlasmaFW111)
  retval = megasas_get_ld_vf_affiliation_111(instance, initial);
 else
  retval = megasas_get_ld_vf_affiliation_12(instance, initial);
 return retval;
}
