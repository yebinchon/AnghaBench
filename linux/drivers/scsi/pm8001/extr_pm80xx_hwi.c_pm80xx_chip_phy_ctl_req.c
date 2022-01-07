
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct pm8001_hba_info {struct inbound_queue_table* inbnd_q_tbl; } ;
struct local_phy_ctl_req {void* phyop_phyid; void* tag; } ;
struct inbound_queue_table {int dummy; } ;
typedef int payload ;


 int OPC_INB_LOCAL_PHY_CONTROL ;
 void* cpu_to_le32 (int) ;
 int memset (struct local_phy_ctl_req*,int ,int) ;
 int pm8001_mpi_build_cmd (struct pm8001_hba_info*,struct inbound_queue_table*,int,struct local_phy_ctl_req*,int ) ;
 int pm8001_tag_alloc (struct pm8001_hba_info*,int*) ;

__attribute__((used)) static int pm80xx_chip_phy_ctl_req(struct pm8001_hba_info *pm8001_ha,
 u32 phyId, u32 phy_op)
{
 u32 tag;
 int rc;
 struct local_phy_ctl_req payload;
 struct inbound_queue_table *circularQ;
 u32 opc = OPC_INB_LOCAL_PHY_CONTROL;
 memset(&payload, 0, sizeof(payload));
 rc = pm8001_tag_alloc(pm8001_ha, &tag);
 if (rc)
  return rc;
 circularQ = &pm8001_ha->inbnd_q_tbl[0];
 payload.tag = cpu_to_le32(tag);
 payload.phyop_phyid =
  cpu_to_le32(((phy_op & 0xFF) << 8) | (phyId & 0xFF));
 return pm8001_mpi_build_cmd(pm8001_ha, circularQ, opc, &payload, 0);
}
