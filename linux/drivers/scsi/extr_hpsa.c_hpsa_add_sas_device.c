
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sas_rphy {int dummy; } ;
struct hpsa_scsi_dev_t {struct hpsa_sas_port* sas_port; int sas_address; } ;
struct hpsa_sas_port {struct sas_rphy* rphy; int port; } ;
struct hpsa_sas_node {int dummy; } ;


 int ENODEV ;
 int ENOMEM ;
 struct hpsa_sas_port* hpsa_alloc_sas_port (struct hpsa_sas_node*,int ) ;
 int hpsa_free_sas_port (struct hpsa_sas_port*) ;
 int hpsa_sas_port_add_rphy (struct hpsa_sas_port*,struct sas_rphy*) ;
 struct sas_rphy* sas_end_device_alloc (int ) ;

__attribute__((used)) static int hpsa_add_sas_device(struct hpsa_sas_node *hpsa_sas_node,
    struct hpsa_scsi_dev_t *device)
{
 int rc;
 struct hpsa_sas_port *hpsa_sas_port;
 struct sas_rphy *rphy;

 hpsa_sas_port = hpsa_alloc_sas_port(hpsa_sas_node, device->sas_address);
 if (!hpsa_sas_port)
  return -ENOMEM;

 rphy = sas_end_device_alloc(hpsa_sas_port->port);
 if (!rphy) {
  rc = -ENODEV;
  goto free_sas_port;
 }

 hpsa_sas_port->rphy = rphy;
 device->sas_port = hpsa_sas_port;

 rc = hpsa_sas_port_add_rphy(hpsa_sas_port, rphy);
 if (rc)
  goto free_sas_port;

 return 0;

free_sas_port:
 hpsa_free_sas_port(hpsa_sas_port);
 device->sas_port = ((void*)0);

 return rc;
}
