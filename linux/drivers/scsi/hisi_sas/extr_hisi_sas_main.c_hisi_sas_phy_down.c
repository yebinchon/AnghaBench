
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sas_ha_struct {int (* notify_phy_event ) (struct asd_sas_phy*,int ) ;} ;
struct hisi_sas_port {int id; scalar_t__ port_attached; } ;
struct asd_sas_phy {int dummy; } ;
struct hisi_sas_phy {int phy_type; scalar_t__ in_reset; struct hisi_sas_port* port; struct asd_sas_phy sas_phy; } ;
struct hisi_hba {TYPE_1__* hw; int flags; struct device* dev; struct sas_ha_struct sha; struct hisi_sas_phy* phy; } ;
struct device {int dummy; } ;
struct TYPE_2__ {int (* get_wideport_bitmap ) (struct hisi_hba*,int) ;} ;


 int HISI_SAS_RESET_BIT ;
 int PHYE_LOSS_OF_SIGNAL ;
 int PORT_TYPE_SAS ;
 int PORT_TYPE_SATA ;
 int dev_info (struct device*,char*,int) ;
 int hisi_sas_bytes_dmaed (struct hisi_hba*,int) ;
 int hisi_sas_phy_disconnected (struct hisi_sas_phy*) ;
 int hisi_sas_port_notify_formed (struct asd_sas_phy*) ;
 int sas_phy_disconnected (struct asd_sas_phy*) ;
 int stub1 (struct asd_sas_phy*,int ) ;
 int stub2 (struct hisi_hba*,int) ;
 scalar_t__ test_bit (int ,int *) ;

void hisi_sas_phy_down(struct hisi_hba *hisi_hba, int phy_no, int rdy)
{
 struct hisi_sas_phy *phy = &hisi_hba->phy[phy_no];
 struct asd_sas_phy *sas_phy = &phy->sas_phy;
 struct sas_ha_struct *sas_ha = &hisi_hba->sha;
 struct device *dev = hisi_hba->dev;

 if (rdy) {

  hisi_sas_bytes_dmaed(hisi_hba, phy_no);
  hisi_sas_port_notify_formed(sas_phy);
 } else {
  struct hisi_sas_port *port = phy->port;

  if (test_bit(HISI_SAS_RESET_BIT, &hisi_hba->flags) ||
      phy->in_reset) {
   dev_info(dev, "ignore flutter phy%d down\n", phy_no);
   return;
  }

  sas_ha->notify_phy_event(sas_phy, PHYE_LOSS_OF_SIGNAL);
  sas_phy_disconnected(sas_phy);

  if (port) {
   if (phy->phy_type & PORT_TYPE_SAS) {
    int port_id = port->id;

    if (!hisi_hba->hw->get_wideport_bitmap(hisi_hba,
               port_id))
     port->port_attached = 0;
   } else if (phy->phy_type & PORT_TYPE_SATA)
    port->port_attached = 0;
  }
  hisi_sas_phy_disconnected(phy);
 }
}
