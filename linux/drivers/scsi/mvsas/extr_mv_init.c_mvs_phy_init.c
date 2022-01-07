
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sas_ha_struct {int dummy; } ;
struct asd_sas_phy {int enabled; int id; struct mvs_phy* lldd_phy; struct sas_ha_struct* ha; int * frame_rcvd; int * sas_addr; int linkrate; int oob_mode; int role; int type; scalar_t__ tproto; int iproto; int class; } ;
struct mvs_phy {int * frame_rcvd; int timer; int * port; struct mvs_info* mvi; struct asd_sas_phy sas_phy; } ;
struct mvs_info {TYPE_2__* shost; int * sas_addr; TYPE_1__* chip; struct mvs_phy* phy; } ;
struct TYPE_4__ {scalar_t__ hostdata; } ;
struct TYPE_3__ {int n_phy; } ;


 int OOB_NOT_CONNECTED ;
 int PHY_ROLE_INITIATOR ;
 int PHY_TYPE_PHYSICAL ;
 int SAS ;
 int SAS_LINK_RATE_UNKNOWN ;
 int SAS_PROTOCOL_ALL ;
 int timer_setup (int *,int *,int ) ;

__attribute__((used)) static void mvs_phy_init(struct mvs_info *mvi, int phy_id)
{
 struct mvs_phy *phy = &mvi->phy[phy_id];
 struct asd_sas_phy *sas_phy = &phy->sas_phy;

 phy->mvi = mvi;
 phy->port = ((void*)0);
 timer_setup(&phy->timer, ((void*)0), 0);
 sas_phy->enabled = (phy_id < mvi->chip->n_phy) ? 1 : 0;
 sas_phy->class = SAS;
 sas_phy->iproto = SAS_PROTOCOL_ALL;
 sas_phy->tproto = 0;
 sas_phy->type = PHY_TYPE_PHYSICAL;
 sas_phy->role = PHY_ROLE_INITIATOR;
 sas_phy->oob_mode = OOB_NOT_CONNECTED;
 sas_phy->linkrate = SAS_LINK_RATE_UNKNOWN;

 sas_phy->id = phy_id;
 sas_phy->sas_addr = &mvi->sas_addr[0];
 sas_phy->frame_rcvd = &phy->frame_rcvd[0];
 sas_phy->ha = (struct sas_ha_struct *)mvi->shost->hostdata;
 sas_phy->lldd_phy = phy;
}
