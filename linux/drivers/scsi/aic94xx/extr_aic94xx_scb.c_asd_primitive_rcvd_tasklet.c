
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct sas_ha_struct {int (* notify_port_event ) (struct asd_sas_phy*,int ) ;struct asd_sas_phy** sas_phy; } ;
struct done_list_struct {int* status_block; } ;
struct asd_sas_phy {int sas_prim_lock; int sas_prim; } ;
struct asd_phy {int dummy; } ;
struct asd_ha_struct {struct asd_phy* phys; struct sas_ha_struct sas_ha; } ;
struct asd_ascb {struct asd_ha_struct* ha; } ;


 int ASD_DPRINTK (char*,int,...) ;
 int PORTE_BROADCAST_RCVD ;
 int PORTE_HARD_RESET ;
 int asd_deform_port (struct asd_ha_struct*,struct asd_phy*) ;
 int ffs (int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int stub1 (struct asd_sas_phy*,int ) ;
 int stub2 (struct asd_sas_phy*,int ) ;

__attribute__((used)) static void asd_primitive_rcvd_tasklet(struct asd_ascb *ascb,
           struct done_list_struct *dl,
           int phy_id)
{
 unsigned long flags;
 struct sas_ha_struct *sas_ha = &ascb->ha->sas_ha;
 struct asd_sas_phy *sas_phy = sas_ha->sas_phy[phy_id];
 struct asd_ha_struct *asd_ha = ascb->ha;
 struct asd_phy *phy = &asd_ha->phys[phy_id];
 u8 reg = dl->status_block[1];
 u32 cont = dl->status_block[2] << ((reg & 3)*8);

 reg &= ~3;
 switch (reg) {
 case 130:
  switch (cont) {
  case 135:
  case 134:
  case 133:
  case 132:
   ASD_DPRINTK("phy%d: BROADCAST change received:%d\n",
        phy_id, cont);
   spin_lock_irqsave(&sas_phy->sas_prim_lock, flags);
   sas_phy->sas_prim = ffs(cont);
   spin_unlock_irqrestore(&sas_phy->sas_prim_lock, flags);
   sas_ha->notify_port_event(sas_phy,PORTE_BROADCAST_RCVD);
   break;

  case 128:
   ASD_DPRINTK("phy%d: unknown BREAK\n", phy_id);
   break;

  default:
   ASD_DPRINTK("phy%d: primitive reg:0x%x, cont:0x%04x\n",
        phy_id, reg, cont);
   break;
  }
  break;
 case 129:
  switch (cont) {
  case 131:
   ASD_DPRINTK("phy%d: HARD_RESET primitive rcvd\n",
        phy_id);


   asd_deform_port(asd_ha, phy);
   sas_ha->notify_port_event(sas_phy, PORTE_HARD_RESET);
   break;

  default:
   ASD_DPRINTK("phy%d: primitive reg:0x%x, cont:0x%04x\n",
        phy_id, reg, cont);
   break;
  }
  break;
 default:
  ASD_DPRINTK("unknown primitive register:0x%x\n",
       dl->status_block[1]);
  break;
 }
}
