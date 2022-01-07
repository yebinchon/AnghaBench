
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sas_rphy {int dummy; } ;
struct pqi_sas_port {int port; TYPE_1__* device; } ;
struct TYPE_2__ {scalar_t__ is_expander_smp_device; } ;


 int SAS_FANOUT_EXPANDER_DEVICE ;
 struct sas_rphy* sas_end_device_alloc (int ) ;
 struct sas_rphy* sas_expander_alloc (int ,int ) ;

__attribute__((used)) static struct sas_rphy *pqi_sas_rphy_alloc(struct pqi_sas_port *pqi_sas_port)
{
 if (pqi_sas_port->device &&
  pqi_sas_port->device->is_expander_smp_device)
  return sas_expander_alloc(pqi_sas_port->port,
    SAS_FANOUT_EXPANDER_DEVICE);

 return sas_end_device_alloc(pqi_sas_port->port);
}
