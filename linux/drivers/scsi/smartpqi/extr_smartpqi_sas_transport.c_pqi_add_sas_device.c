
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sas_rphy {int dummy; } ;
struct pqi_scsi_dev {struct pqi_sas_port* sas_port; int sas_address; } ;
struct pqi_sas_port {struct sas_rphy* rphy; } ;
struct pqi_sas_node {int dummy; } ;


 int ENODEV ;
 int ENOMEM ;
 struct pqi_sas_port* pqi_alloc_sas_port (struct pqi_sas_node*,int ,struct pqi_scsi_dev*) ;
 int pqi_free_sas_port (struct pqi_sas_port*) ;
 int pqi_sas_port_add_rphy (struct pqi_sas_port*,struct sas_rphy*) ;
 struct sas_rphy* pqi_sas_rphy_alloc (struct pqi_sas_port*) ;

int pqi_add_sas_device(struct pqi_sas_node *pqi_sas_node,
 struct pqi_scsi_dev *device)
{
 int rc;
 struct pqi_sas_port *pqi_sas_port;
 struct sas_rphy *rphy;

 pqi_sas_port = pqi_alloc_sas_port(pqi_sas_node,
  device->sas_address, device);
 if (!pqi_sas_port)
  return -ENOMEM;

 rphy = pqi_sas_rphy_alloc(pqi_sas_port);
 if (!rphy) {
  rc = -ENODEV;
  goto free_sas_port;
 }

 pqi_sas_port->rphy = rphy;
 device->sas_port = pqi_sas_port;

 rc = pqi_sas_port_add_rphy(pqi_sas_port, rphy);
 if (rc)
  goto free_sas_port;

 return 0;

free_sas_port:
 pqi_free_sas_port(pqi_sas_port);
 device->sas_port = ((void*)0);

 return rc;
}
