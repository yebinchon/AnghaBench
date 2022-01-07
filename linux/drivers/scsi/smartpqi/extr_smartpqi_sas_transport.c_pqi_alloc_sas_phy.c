
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sas_phy {int dummy; } ;
struct pqi_sas_port {int next_phy_index; TYPE_1__* parent_node; } ;
struct pqi_sas_phy {struct pqi_sas_port* parent_port; struct sas_phy* phy; } ;
struct TYPE_2__ {int parent_dev; } ;


 int GFP_KERNEL ;
 int kfree (struct pqi_sas_phy*) ;
 struct pqi_sas_phy* kzalloc (int,int ) ;
 struct sas_phy* sas_phy_alloc (int ,int ) ;

__attribute__((used)) static struct pqi_sas_phy *pqi_alloc_sas_phy(struct pqi_sas_port *pqi_sas_port)
{
 struct pqi_sas_phy *pqi_sas_phy;
 struct sas_phy *phy;

 pqi_sas_phy = kzalloc(sizeof(*pqi_sas_phy), GFP_KERNEL);
 if (!pqi_sas_phy)
  return ((void*)0);

 phy = sas_phy_alloc(pqi_sas_port->parent_node->parent_dev,
  pqi_sas_port->next_phy_index);
 if (!phy) {
  kfree(pqi_sas_phy);
  return ((void*)0);
 }

 pqi_sas_port->next_phy_index++;
 pqi_sas_phy->phy = phy;
 pqi_sas_phy->parent_port = pqi_sas_port;

 return pqi_sas_phy;
}
