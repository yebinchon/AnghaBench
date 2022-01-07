
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sas_ha_struct {int num_phys; struct asd_sas_port** sas_port; } ;
struct asd_sas_port {int disc; } ;


 int sas_init_disc (int *,struct asd_sas_port*) ;
 int sas_init_port (struct asd_sas_port*,struct sas_ha_struct*,int) ;

int sas_register_ports(struct sas_ha_struct *sas_ha)
{
 int i;


 for (i = 0; i < sas_ha->num_phys; i++) {
  struct asd_sas_port *port = sas_ha->sas_port[i];

  sas_init_port(port, sas_ha, i);
  sas_init_disc(&port->disc, port);
 }
 return 0;
}
