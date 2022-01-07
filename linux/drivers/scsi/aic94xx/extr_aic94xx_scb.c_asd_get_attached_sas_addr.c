
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u8 ;
typedef int u64 ;
struct sas_identify_frame {int sas_addr; } ;
struct TYPE_8__ {int* frame_rcvd; scalar_t__ oob_mode; TYPE_1__* ha; } ;
struct asd_phy {TYPE_4__ sas_phy; TYPE_2__* phy_desc; } ;
struct TYPE_7__ {scalar_t__ sata_name_base; } ;
struct asd_ha_struct {TYPE_3__ hw_prof; } ;
typedef int __be64 ;
struct TYPE_6__ {scalar_t__ sas_addr; } ;
struct TYPE_5__ {struct asd_ha_struct* lldd_ha; } ;


 int SAS_ADDR_SIZE ;
 scalar_t__ SATA_OOB_MODE ;
 int be64_to_cpu (int ) ;
 int cpu_to_be64 (int ) ;
 int memcpy (int *,int ,int ) ;
 scalar_t__ ord_phy (struct asd_ha_struct*,struct asd_phy*) ;

__attribute__((used)) static void asd_get_attached_sas_addr(struct asd_phy *phy, u8 *sas_addr)
{
 if (phy->sas_phy.frame_rcvd[0] == 0x34
     && phy->sas_phy.oob_mode == SATA_OOB_MODE) {
  struct asd_ha_struct *asd_ha = phy->sas_phy.ha->lldd_ha;

  u64 addr = be64_to_cpu(*(__be64 *)phy->phy_desc->sas_addr);

  addr += asd_ha->hw_prof.sata_name_base + ord_phy(asd_ha, phy);
  *(__be64 *)sas_addr = cpu_to_be64(addr);
 } else {
  struct sas_identify_frame *idframe =
   (void *) phy->sas_phy.frame_rcvd;
  memcpy(sas_addr, idframe->sas_addr, SAS_ADDR_SIZE);
 }
}
