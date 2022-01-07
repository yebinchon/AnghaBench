
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hpsa_sas_port {int dummy; } ;
struct hpsa_sas_phy {int dummy; } ;
struct hpsa_sas_node {int dummy; } ;
struct device {int dummy; } ;
struct ctlr_info {struct hpsa_sas_node* sas_host; int sas_address; TYPE_1__* scsi_host; } ;
struct TYPE_2__ {struct device shost_dev; } ;


 int ENODEV ;
 int ENOMEM ;
 struct hpsa_sas_node* hpsa_alloc_sas_node (struct device*) ;
 struct hpsa_sas_phy* hpsa_alloc_sas_phy (struct hpsa_sas_port*) ;
 struct hpsa_sas_port* hpsa_alloc_sas_port (struct hpsa_sas_node*,int ) ;
 int hpsa_free_sas_node (struct hpsa_sas_node*) ;
 int hpsa_free_sas_phy (struct hpsa_sas_phy*) ;
 int hpsa_free_sas_port (struct hpsa_sas_port*) ;
 int hpsa_sas_port_add_phy (struct hpsa_sas_phy*) ;

__attribute__((used)) static int hpsa_add_sas_host(struct ctlr_info *h)
{
 int rc;
 struct device *parent_dev;
 struct hpsa_sas_node *hpsa_sas_node;
 struct hpsa_sas_port *hpsa_sas_port;
 struct hpsa_sas_phy *hpsa_sas_phy;

 parent_dev = &h->scsi_host->shost_dev;

 hpsa_sas_node = hpsa_alloc_sas_node(parent_dev);
 if (!hpsa_sas_node)
  return -ENOMEM;

 hpsa_sas_port = hpsa_alloc_sas_port(hpsa_sas_node, h->sas_address);
 if (!hpsa_sas_port) {
  rc = -ENODEV;
  goto free_sas_node;
 }

 hpsa_sas_phy = hpsa_alloc_sas_phy(hpsa_sas_port);
 if (!hpsa_sas_phy) {
  rc = -ENODEV;
  goto free_sas_port;
 }

 rc = hpsa_sas_port_add_phy(hpsa_sas_phy);
 if (rc)
  goto free_sas_phy;

 h->sas_host = hpsa_sas_node;

 return 0;

free_sas_phy:
 hpsa_free_sas_phy(hpsa_sas_phy);
free_sas_port:
 hpsa_free_sas_port(hpsa_sas_port);
free_sas_node:
 hpsa_free_sas_node(hpsa_sas_node);

 return rc;
}
