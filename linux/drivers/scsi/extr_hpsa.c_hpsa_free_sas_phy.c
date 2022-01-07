
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sas_phy {int dummy; } ;
struct hpsa_sas_phy {int phy_list_entry; scalar_t__ added_to_port; TYPE_1__* parent_port; struct sas_phy* phy; } ;
struct TYPE_2__ {int port; } ;


 int kfree (struct hpsa_sas_phy*) ;
 int list_del (int *) ;
 int sas_phy_delete (struct sas_phy*) ;
 int sas_port_delete_phy (int ,struct sas_phy*) ;

__attribute__((used)) static void hpsa_free_sas_phy(struct hpsa_sas_phy *hpsa_sas_phy)
{
 struct sas_phy *phy = hpsa_sas_phy->phy;

 sas_port_delete_phy(hpsa_sas_phy->parent_port->port, phy);
 if (hpsa_sas_phy->added_to_port)
  list_del(&hpsa_sas_phy->phy_list_entry);
 sas_phy_delete(phy);
 kfree(hpsa_sas_phy);
}
