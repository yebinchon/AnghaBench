
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sas_ha_struct {int num_phys; TYPE_1__** sas_phy; } ;
struct TYPE_2__ {scalar_t__ port; } ;


 int sas_deform_port (TYPE_1__*,int ) ;

void sas_unregister_ports(struct sas_ha_struct *sas_ha)
{
 int i;

 for (i = 0; i < sas_ha->num_phys; i++)
  if (sas_ha->sas_phy[i]->port)
   sas_deform_port(sas_ha->sas_phy[i], 0);

}
