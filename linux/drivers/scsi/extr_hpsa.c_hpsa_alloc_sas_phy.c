
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sas_phy {int dummy; } ;
struct hpsa_sas_port {int next_phy_index; TYPE_1__* parent_node; } ;
struct hpsa_sas_phy {struct hpsa_sas_port* parent_port; struct sas_phy* phy; } ;
struct TYPE_2__ {int parent_dev; } ;


 int GFP_KERNEL ;
 int kfree (struct hpsa_sas_phy*) ;
 struct hpsa_sas_phy* kzalloc (int,int ) ;
 struct sas_phy* sas_phy_alloc (int ,int ) ;

__attribute__((used)) static struct hpsa_sas_phy *hpsa_alloc_sas_phy(
    struct hpsa_sas_port *hpsa_sas_port)
{
 struct hpsa_sas_phy *hpsa_sas_phy;
 struct sas_phy *phy;

 hpsa_sas_phy = kzalloc(sizeof(*hpsa_sas_phy), GFP_KERNEL);
 if (!hpsa_sas_phy)
  return ((void*)0);

 phy = sas_phy_alloc(hpsa_sas_port->parent_node->parent_dev,
  hpsa_sas_port->next_phy_index);
 if (!phy) {
  kfree(hpsa_sas_phy);
  return ((void*)0);
 }

 hpsa_sas_port->next_phy_index++;
 hpsa_sas_phy->phy = phy;
 hpsa_sas_phy->parent_port = hpsa_sas_port;

 return hpsa_sas_phy;
}
