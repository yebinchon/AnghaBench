
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sas_identify {void* target_port_protocols; void* initiator_port_protocols; int sas_address; } ;
struct sas_rphy {struct sas_identify identify; } ;
struct hpsa_sas_port {int sas_address; } ;


 void* SAS_PROTOCOL_STP ;
 int sas_rphy_add (struct sas_rphy*) ;

__attribute__((used)) static int
 hpsa_sas_port_add_rphy(struct hpsa_sas_port *hpsa_sas_port,
    struct sas_rphy *rphy)
{
 struct sas_identify *identify;

 identify = &rphy->identify;
 identify->sas_address = hpsa_sas_port->sas_address;
 identify->initiator_port_protocols = SAS_PROTOCOL_STP;
 identify->target_port_protocols = SAS_PROTOCOL_STP;

 return sas_rphy_add(rphy);
}
