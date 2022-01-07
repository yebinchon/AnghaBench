
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sas_ha_struct {int dummy; } ;
struct asd_sas_phy {int enabled; int id; struct hisi_sas_phy* lldd_phy; struct sas_ha_struct* ha; int * frame_rcvd; int * sas_addr; int linkrate; int oob_mode; int role; int type; scalar_t__ tproto; int iproto; int class; } ;
struct hisi_sas_phy {int timer; int lock; int * works; int * frame_rcvd; int maximum_linkrate; int minimum_linkrate; int * port; struct hisi_hba* hisi_hba; struct asd_sas_phy sas_phy; } ;
struct hisi_hba {int n_phy; TYPE_2__* shost; int * sas_addr; TYPE_1__* hw; struct hisi_sas_phy* phy; } ;
struct TYPE_4__ {scalar_t__ hostdata; } ;
struct TYPE_3__ {int (* phy_get_max_linkrate ) () ;} ;


 int HISI_PHYES_NUM ;
 int INIT_WORK (int *,int ) ;
 int OOB_NOT_CONNECTED ;
 int PHY_ROLE_INITIATOR ;
 int PHY_TYPE_PHYSICAL ;
 int SAS ;
 int SAS_LINK_RATE_1_5_GBPS ;
 int SAS_LINK_RATE_UNKNOWN ;
 int SAS_PROTOCOL_ALL ;
 int * hisi_sas_phye_fns ;
 int hisi_sas_wait_phyup_timedout ;
 int spin_lock_init (int *) ;
 int stub1 () ;
 int timer_setup (int *,int ,int ) ;

__attribute__((used)) static void hisi_sas_phy_init(struct hisi_hba *hisi_hba, int phy_no)
{
 struct hisi_sas_phy *phy = &hisi_hba->phy[phy_no];
 struct asd_sas_phy *sas_phy = &phy->sas_phy;
 int i;

 phy->hisi_hba = hisi_hba;
 phy->port = ((void*)0);
 phy->minimum_linkrate = SAS_LINK_RATE_1_5_GBPS;
 phy->maximum_linkrate = hisi_hba->hw->phy_get_max_linkrate();
 sas_phy->enabled = (phy_no < hisi_hba->n_phy) ? 1 : 0;
 sas_phy->class = SAS;
 sas_phy->iproto = SAS_PROTOCOL_ALL;
 sas_phy->tproto = 0;
 sas_phy->type = PHY_TYPE_PHYSICAL;
 sas_phy->role = PHY_ROLE_INITIATOR;
 sas_phy->oob_mode = OOB_NOT_CONNECTED;
 sas_phy->linkrate = SAS_LINK_RATE_UNKNOWN;
 sas_phy->id = phy_no;
 sas_phy->sas_addr = &hisi_hba->sas_addr[0];
 sas_phy->frame_rcvd = &phy->frame_rcvd[0];
 sas_phy->ha = (struct sas_ha_struct *)hisi_hba->shost->hostdata;
 sas_phy->lldd_phy = phy;

 for (i = 0; i < HISI_PHYES_NUM; i++)
  INIT_WORK(&phy->works[i], hisi_sas_phye_fns[i]);

 spin_lock_init(&phy->lock);

 timer_setup(&phy->timer, hisi_sas_wait_phyup_timedout, 0);
}
