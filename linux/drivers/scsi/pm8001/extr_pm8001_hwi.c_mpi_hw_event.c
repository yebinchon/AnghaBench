
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u8 ;
typedef int u32 ;
typedef int u16 ;
struct sas_ha_struct {int (* notify_port_event ) (struct asd_sas_phy*,int ) ;int (* notify_phy_event ) (struct asd_sas_phy*,int ) ;struct asd_sas_phy** sas_phy; } ;
struct asd_sas_phy {int sas_prim; int sas_prim_lock; } ;
struct pm8001_phy {int phy_state; int phy_attached; struct asd_sas_phy sas_phy; int * enable_completion; } ;
struct pm8001_hba_info {int flags; struct pm8001_phy* phy; struct sas_ha_struct* sas; } ;
struct hw_event_resp {int lr_evt_status_phyid_portid; } ;
 int PHYE_LOSS_OF_SIGNAL ;
 int PHYE_OOB_ERROR ;
 int PHYE_SPINUP_HOLD ;
 int PM8001F_RUN_TIME ;
 int PM8001_MSG_DBG (struct pm8001_hba_info*,int ) ;
 int PORTE_BROADCAST_RCVD ;
 int PORTE_HARD_RESET ;
 int PORTE_LINK_RESET_ERR ;
 int complete (int *) ;
 int hw_event_phy_down (struct pm8001_hba_info*,void*) ;
 int hw_event_sas_phy_up (struct pm8001_hba_info*,void*) ;
 int hw_event_sata_phy_up (struct pm8001_hba_info*,void*) ;
 int le32_to_cpu (int ) ;
 int pm8001_hw_event_ack_req (struct pm8001_hba_info*,int ,int const,size_t,size_t,int,int ) ;
 int pm8001_printk (char*,...) ;
 int sas_phy_disconnected (struct asd_sas_phy*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int stub1 (struct asd_sas_phy*,int ) ;
 int stub10 (struct asd_sas_phy*,int ) ;
 int stub11 (struct asd_sas_phy*,int ) ;
 int stub12 (struct asd_sas_phy*,int ) ;
 int stub13 (struct asd_sas_phy*,int ) ;
 int stub14 (struct asd_sas_phy*,int ) ;
 int stub15 (struct asd_sas_phy*,int ) ;
 int stub16 (struct asd_sas_phy*,int ) ;
 int stub2 (struct asd_sas_phy*,int ) ;
 int stub3 (struct asd_sas_phy*,int ) ;
 int stub4 (struct asd_sas_phy*,int ) ;
 int stub5 (struct asd_sas_phy*,int ) ;
 int stub6 (struct asd_sas_phy*,int ) ;
 int stub7 (struct asd_sas_phy*,int ) ;
 int stub8 (struct asd_sas_phy*,int ) ;
 int stub9 (struct asd_sas_phy*,int ) ;

__attribute__((used)) static int mpi_hw_event(struct pm8001_hba_info *pm8001_ha, void* piomb)
{
 unsigned long flags;
 struct hw_event_resp *pPayload =
  (struct hw_event_resp *)(piomb + 4);
 u32 lr_evt_status_phyid_portid =
  le32_to_cpu(pPayload->lr_evt_status_phyid_portid);
 u8 port_id = (u8)(lr_evt_status_phyid_portid & 0x0000000F);
 u8 phy_id =
  (u8)((lr_evt_status_phyid_portid & 0x000000F0) >> 4);
 u16 eventType =
  (u16)((lr_evt_status_phyid_portid & 0x00FFFF00) >> 8);
 u8 status =
  (u8)((lr_evt_status_phyid_portid & 0x0F000000) >> 24);
 struct sas_ha_struct *sas_ha = pm8001_ha->sas;
 struct pm8001_phy *phy = &pm8001_ha->phy[phy_id];
 struct asd_sas_phy *sas_phy = sas_ha->sas_phy[phy_id];
 PM8001_MSG_DBG(pm8001_ha,
  pm8001_printk("outbound queue HW event & event type : "));
 switch (eventType) {
 case 137:
  PM8001_MSG_DBG(pm8001_ha,
  pm8001_printk("HW_EVENT_PHY_START_STATUS"
   " status = %x\n", status));
  if (status == 0) {
   phy->phy_state = 1;
   if (pm8001_ha->flags == PM8001F_RUN_TIME &&
     phy->enable_completion != ((void*)0))
    complete(phy->enable_completion);
  }
  break;
 case 130:
  PM8001_MSG_DBG(pm8001_ha,
   pm8001_printk("HW_EVENT_PHY_START_STATUS\n"));
  hw_event_sas_phy_up(pm8001_ha, piomb);
  break;
 case 129:
  PM8001_MSG_DBG(pm8001_ha,
   pm8001_printk("HW_EVENT_SATA_PHY_UP\n"));
  hw_event_sata_phy_up(pm8001_ha, piomb);
  break;
 case 136:
  PM8001_MSG_DBG(pm8001_ha,
   pm8001_printk("HW_EVENT_PHY_STOP_STATUS "
   "status = %x\n", status));
  if (status == 0)
   phy->phy_state = 0;
  break;
 case 128:
  PM8001_MSG_DBG(pm8001_ha,
   pm8001_printk("HW_EVENT_SATA_SPINUP_HOLD\n"));
  sas_ha->notify_phy_event(&phy->sas_phy, PHYE_SPINUP_HOLD);
  break;
 case 139:
  PM8001_MSG_DBG(pm8001_ha,
   pm8001_printk("HW_EVENT_PHY_DOWN\n"));
  sas_ha->notify_phy_event(&phy->sas_phy, PHYE_LOSS_OF_SIGNAL);
  phy->phy_attached = 0;
  phy->phy_state = 0;
  hw_event_phy_down(pm8001_ha, piomb);
  break;
 case 135:
  PM8001_MSG_DBG(pm8001_ha,
   pm8001_printk("HW_EVENT_PORT_INVALID\n"));
  sas_phy_disconnected(sas_phy);
  phy->phy_attached = 0;
  sas_ha->notify_port_event(sas_phy, PORTE_LINK_RESET_ERR);
  break;


 case 151:
  PM8001_MSG_DBG(pm8001_ha,
   pm8001_printk("HW_EVENT_BROADCAST_CHANGE\n"));
  pm8001_hw_event_ack_req(pm8001_ha, 0, 151,
   port_id, phy_id, 1, 0);
  spin_lock_irqsave(&sas_phy->sas_prim_lock, flags);
  sas_phy->sas_prim = 151;
  spin_unlock_irqrestore(&sas_phy->sas_prim_lock, flags);
  sas_ha->notify_port_event(sas_phy, PORTE_BROADCAST_RCVD);
  break;
 case 138:
  PM8001_MSG_DBG(pm8001_ha,
   pm8001_printk("HW_EVENT_PHY_ERROR\n"));
  sas_phy_disconnected(&phy->sas_phy);
  phy->phy_attached = 0;
  sas_ha->notify_phy_event(&phy->sas_phy, PHYE_OOB_ERROR);
  break;
 case 150:
  PM8001_MSG_DBG(pm8001_ha,
   pm8001_printk("HW_EVENT_BROADCAST_EXP\n"));
  spin_lock_irqsave(&sas_phy->sas_prim_lock, flags);
  sas_phy->sas_prim = 150;
  spin_unlock_irqrestore(&sas_phy->sas_prim_lock, flags);
  sas_ha->notify_port_event(sas_phy, PORTE_BROADCAST_RCVD);
  break;
 case 143:
  PM8001_MSG_DBG(pm8001_ha,
   pm8001_printk("HW_EVENT_LINK_ERR_INVALID_DWORD\n"));
  pm8001_hw_event_ack_req(pm8001_ha, 0,
   143, port_id, phy_id, 0, 0);
  sas_phy_disconnected(sas_phy);
  phy->phy_attached = 0;
  sas_ha->notify_port_event(sas_phy, PORTE_LINK_RESET_ERR);
  break;
 case 144:
  PM8001_MSG_DBG(pm8001_ha,
   pm8001_printk("HW_EVENT_LINK_ERR_DISPARITY_ERROR\n"));
  pm8001_hw_event_ack_req(pm8001_ha, 0,
   144,
   port_id, phy_id, 0, 0);
  sas_phy_disconnected(sas_phy);
  phy->phy_attached = 0;
  sas_ha->notify_port_event(sas_phy, PORTE_LINK_RESET_ERR);
  break;
 case 145:
  PM8001_MSG_DBG(pm8001_ha,
   pm8001_printk("HW_EVENT_LINK_ERR_CODE_VIOLATION\n"));
  pm8001_hw_event_ack_req(pm8001_ha, 0,
   145,
   port_id, phy_id, 0, 0);
  sas_phy_disconnected(sas_phy);
  phy->phy_attached = 0;
  sas_ha->notify_port_event(sas_phy, PORTE_LINK_RESET_ERR);
  break;
 case 142:
  PM8001_MSG_DBG(pm8001_ha,
        pm8001_printk("HW_EVENT_LINK_ERR_LOSS_OF_DWORD_SYNCH\n"));
  pm8001_hw_event_ack_req(pm8001_ha, 0,
   142,
   port_id, phy_id, 0, 0);
  sas_phy_disconnected(sas_phy);
  phy->phy_attached = 0;
  sas_ha->notify_port_event(sas_phy, PORTE_LINK_RESET_ERR);
  break;
 case 140:
  PM8001_MSG_DBG(pm8001_ha,
   pm8001_printk("HW_EVENT_MALFUNCTION\n"));
  break;
 case 149:
  PM8001_MSG_DBG(pm8001_ha,
   pm8001_printk("HW_EVENT_BROADCAST_SES\n"));
  spin_lock_irqsave(&sas_phy->sas_prim_lock, flags);
  sas_phy->sas_prim = 149;
  spin_unlock_irqrestore(&sas_phy->sas_prim_lock, flags);
  sas_ha->notify_port_event(sas_phy, PORTE_BROADCAST_RCVD);
  break;
 case 146:
  PM8001_MSG_DBG(pm8001_ha,
   pm8001_printk("HW_EVENT_INBOUND_CRC_ERROR\n"));
  pm8001_hw_event_ack_req(pm8001_ha, 0,
   146,
   port_id, phy_id, 0, 0);
  break;
 case 148:
  PM8001_MSG_DBG(pm8001_ha,
   pm8001_printk("HW_EVENT_HARD_RESET_RECEIVED\n"));
  sas_ha->notify_port_event(sas_phy, PORTE_HARD_RESET);
  break;
 case 147:
  PM8001_MSG_DBG(pm8001_ha,
   pm8001_printk("HW_EVENT_ID_FRAME_TIMEOUT\n"));
  sas_phy_disconnected(sas_phy);
  phy->phy_attached = 0;
  sas_ha->notify_port_event(sas_phy, PORTE_LINK_RESET_ERR);
  break;
 case 141:
  PM8001_MSG_DBG(pm8001_ha,
   pm8001_printk("HW_EVENT_LINK_ERR_PHY_RESET_FAILED\n"));
  pm8001_hw_event_ack_req(pm8001_ha, 0,
   141,
   port_id, phy_id, 0, 0);
  sas_phy_disconnected(sas_phy);
  phy->phy_attached = 0;
  sas_ha->notify_port_event(sas_phy, PORTE_LINK_RESET_ERR);
  break;
 case 131:
  PM8001_MSG_DBG(pm8001_ha,
   pm8001_printk("HW_EVENT_PORT_RESET_TIMER_TMO\n"));
  sas_phy_disconnected(sas_phy);
  phy->phy_attached = 0;
  sas_ha->notify_port_event(sas_phy, PORTE_LINK_RESET_ERR);
  break;
 case 133:
  PM8001_MSG_DBG(pm8001_ha,
   pm8001_printk("HW_EVENT_PORT_RECOVERY_TIMER_TMO\n"));
  sas_phy_disconnected(sas_phy);
  phy->phy_attached = 0;
  sas_ha->notify_port_event(sas_phy, PORTE_LINK_RESET_ERR);
  break;
 case 134:
  PM8001_MSG_DBG(pm8001_ha,
   pm8001_printk("HW_EVENT_PORT_RECOVER\n"));
  break;
 case 132:
  PM8001_MSG_DBG(pm8001_ha,
   pm8001_printk("HW_EVENT_PORT_RESET_COMPLETE\n"));
  break;
 case 152:
  PM8001_MSG_DBG(pm8001_ha,
   pm8001_printk("EVENT_BROADCAST_ASYNCH_EVENT\n"));
  break;
 default:
  PM8001_MSG_DBG(pm8001_ha,
   pm8001_printk("Unknown event type = %x\n", eventType));
  break;
 }
 return 0;
}
