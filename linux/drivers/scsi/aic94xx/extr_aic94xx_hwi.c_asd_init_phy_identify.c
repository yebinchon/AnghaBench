
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {int role; int id; int tproto; int iproto; } ;
struct asd_phy {TYPE_3__ sas_phy; TYPE_4__* identify_frame; TYPE_2__* phy_desc; TYPE_1__* id_frm_tok; } ;
struct TYPE_8__ {int phy_id; int sas_addr; int target_bits; int initiator_bits; int dev_type; } ;
struct TYPE_6__ {int sas_addr; } ;
struct TYPE_5__ {TYPE_4__* vaddr; } ;


 int PHY_ROLE_INITIATOR ;
 int PHY_ROLE_TARGET ;
 int SAS_ADDR_SIZE ;
 int SAS_END_DEVICE ;
 int memcpy (int ,int ,int ) ;
 int memset (TYPE_4__*,int ,int) ;

__attribute__((used)) static void asd_init_phy_identify(struct asd_phy *phy)
{
 phy->identify_frame = phy->id_frm_tok->vaddr;

 memset(phy->identify_frame, 0, sizeof(*phy->identify_frame));

 phy->identify_frame->dev_type = SAS_END_DEVICE;
 if (phy->sas_phy.role & PHY_ROLE_INITIATOR)
  phy->identify_frame->initiator_bits = phy->sas_phy.iproto;
 if (phy->sas_phy.role & PHY_ROLE_TARGET)
  phy->identify_frame->target_bits = phy->sas_phy.tproto;
 memcpy(phy->identify_frame->sas_addr, phy->phy_desc->sas_addr,
        SAS_ADDR_SIZE);
 phy->identify_frame->phy_id = phy->sas_phy.id;
}
