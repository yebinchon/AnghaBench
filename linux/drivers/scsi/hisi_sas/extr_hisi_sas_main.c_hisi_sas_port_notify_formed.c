
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sas_ha_struct {struct hisi_hba* lldd_ha; } ;
struct hisi_sas_port {int port_attached; int id; } ;
struct hisi_sas_phy {struct hisi_sas_port* port; int port_id; } ;
struct hisi_hba {int lock; } ;
struct asd_sas_port {struct hisi_sas_port* lldd_port; } ;
struct asd_sas_phy {struct asd_sas_port* port; struct hisi_sas_phy* lldd_phy; struct sas_ha_struct* ha; } ;


 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 struct hisi_sas_port* to_hisi_sas_port (struct asd_sas_port*) ;

__attribute__((used)) static void hisi_sas_port_notify_formed(struct asd_sas_phy *sas_phy)
{
 struct sas_ha_struct *sas_ha = sas_phy->ha;
 struct hisi_hba *hisi_hba = sas_ha->lldd_ha;
 struct hisi_sas_phy *phy = sas_phy->lldd_phy;
 struct asd_sas_port *sas_port = sas_phy->port;
 struct hisi_sas_port *port = to_hisi_sas_port(sas_port);
 unsigned long flags;

 if (!sas_port)
  return;

 spin_lock_irqsave(&hisi_hba->lock, flags);
 port->port_attached = 1;
 port->id = phy->port_id;
 phy->port = port;
 sas_port->lldd_port = port;
 spin_unlock_irqrestore(&hisi_hba->lock, flags);
}
