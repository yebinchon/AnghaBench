
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct asd_port {scalar_t__ num_phys; scalar_t__ phy_mask; int attached_sas_addr; int sas_addr; } ;
struct asd_ha_struct {struct asd_port* asd_ports; int asd_ports_lock; } ;


 int ASD_MAX_PHYS ;
 int SAS_ADDR_SIZE ;
 int memset (int ,int ,int ) ;
 int spin_lock_init (int *) ;

__attribute__((used)) static void asd_init_ports(struct asd_ha_struct *asd_ha)
{
 int i;

 spin_lock_init(&asd_ha->asd_ports_lock);
 for (i = 0; i < ASD_MAX_PHYS; i++) {
  struct asd_port *asd_port = &asd_ha->asd_ports[i];

  memset(asd_port->sas_addr, 0, SAS_ADDR_SIZE);
  memset(asd_port->attached_sas_addr, 0, SAS_ADDR_SIZE);
  asd_port->phy_mask = 0;
  asd_port->num_phys = 0;
 }
}
