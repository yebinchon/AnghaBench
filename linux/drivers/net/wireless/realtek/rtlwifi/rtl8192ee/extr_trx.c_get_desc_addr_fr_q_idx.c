
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
 int REG_BEQ_TXBD_IDX ;
 int REG_BKQ_TXBD_IDX ;
 int REG_HI0Q_TXBD_IDX ;
 int REG_MGQ_TXBD_IDX ;
 int REG_VIQ_TXBD_IDX ;
 int REG_VOQ_TXBD_IDX ;




__attribute__((used)) static u16 get_desc_addr_fr_q_idx(u16 queue_index)
{
 u16 desc_address;

 switch (queue_index) {
 case 134:
  desc_address = REG_BKQ_TXBD_IDX;
  break;
 case 135:
  desc_address = REG_BEQ_TXBD_IDX;
  break;
 case 129:
  desc_address = REG_VIQ_TXBD_IDX;
  break;
 case 128:
  desc_address = REG_VOQ_TXBD_IDX;
  break;
 case 136:
  desc_address = REG_BEQ_TXBD_IDX;
  break;
 case 130:
  desc_address = REG_BEQ_TXBD_IDX;
  break;
 case 131:
  desc_address = REG_MGQ_TXBD_IDX;
  break;
 case 132:
  desc_address = REG_HI0Q_TXBD_IDX;
  break;
 case 133:
  desc_address = REG_BEQ_TXBD_IDX;
  break;
 default:
  desc_address = REG_BEQ_TXBD_IDX;
  break;
 }
 return desc_address;
}
