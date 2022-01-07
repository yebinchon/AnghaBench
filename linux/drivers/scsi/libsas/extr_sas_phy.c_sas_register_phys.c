
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {TYPE_1__* shost; } ;
struct sas_ha_struct {int num_phys; int sas_addr; TYPE_2__ core; struct asd_sas_phy** sas_phy; } ;
struct asd_sas_phy {TYPE_4__* phy; int tproto; int iproto; scalar_t__ frame_rcvd_size; int sas_prim_lock; int frame_rcvd_lock; struct sas_ha_struct* ha; int * port; int port_phy_el; int event_nr; scalar_t__ error; } ;
struct TYPE_8__ {int phy_identifier; int sas_address; int target_port_protocols; int initiator_port_protocols; } ;
struct TYPE_9__ {void* negotiated_linkrate; void* maximum_linkrate; void* minimum_linkrate; void* maximum_linkrate_hw; void* minimum_linkrate_hw; TYPE_3__ identify; } ;
struct TYPE_6__ {int shost_gendev; } ;


 int ENOMEM ;
 int INIT_LIST_HEAD (int *) ;
 int SAS_ADDR (int ) ;
 void* SAS_LINK_RATE_UNKNOWN ;
 int atomic_set (int *,int ) ;
 int sas_phy_add (TYPE_4__*) ;
 TYPE_4__* sas_phy_alloc (int *,int) ;
 int spin_lock_init (int *) ;

int sas_register_phys(struct sas_ha_struct *sas_ha)
{
 int i;


 for (i = 0; i < sas_ha->num_phys; i++) {
  struct asd_sas_phy *phy = sas_ha->sas_phy[i];

  phy->error = 0;
  atomic_set(&phy->event_nr, 0);
  INIT_LIST_HEAD(&phy->port_phy_el);

  phy->port = ((void*)0);
  phy->ha = sas_ha;
  spin_lock_init(&phy->frame_rcvd_lock);
  spin_lock_init(&phy->sas_prim_lock);
  phy->frame_rcvd_size = 0;

  phy->phy = sas_phy_alloc(&sas_ha->core.shost->shost_gendev, i);
  if (!phy->phy)
   return -ENOMEM;

  phy->phy->identify.initiator_port_protocols =
   phy->iproto;
  phy->phy->identify.target_port_protocols = phy->tproto;
  phy->phy->identify.sas_address = SAS_ADDR(sas_ha->sas_addr);
  phy->phy->identify.phy_identifier = i;
  phy->phy->minimum_linkrate_hw = SAS_LINK_RATE_UNKNOWN;
  phy->phy->maximum_linkrate_hw = SAS_LINK_RATE_UNKNOWN;
  phy->phy->minimum_linkrate = SAS_LINK_RATE_UNKNOWN;
  phy->phy->maximum_linkrate = SAS_LINK_RATE_UNKNOWN;
  phy->phy->negotiated_linkrate = SAS_LINK_RATE_UNKNOWN;

  sas_phy_add(phy->phy);
 }

 return 0;
}
