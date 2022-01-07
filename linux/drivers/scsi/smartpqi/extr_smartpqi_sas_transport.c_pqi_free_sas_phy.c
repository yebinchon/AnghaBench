
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sas_phy {int dummy; } ;
struct pqi_sas_phy {int phy_list_entry; scalar_t__ added_to_port; TYPE_1__* parent_port; struct sas_phy* phy; } ;
struct TYPE_2__ {int port; } ;


 int kfree (struct pqi_sas_phy*) ;
 int list_del (int *) ;
 int sas_phy_free (struct sas_phy*) ;
 int sas_port_delete_phy (int ,struct sas_phy*) ;

__attribute__((used)) static void pqi_free_sas_phy(struct pqi_sas_phy *pqi_sas_phy)
{
 struct sas_phy *phy = pqi_sas_phy->phy;

 sas_port_delete_phy(pqi_sas_phy->parent_port->port, phy);
 sas_phy_free(phy);
 if (pqi_sas_phy->added_to_port)
  list_del(&pqi_sas_phy->phy_list_entry);
 kfree(pqi_sas_phy);
}
