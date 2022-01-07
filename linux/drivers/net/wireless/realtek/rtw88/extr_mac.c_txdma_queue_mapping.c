
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct rtw_rqpn {int dma_map_vo; int dma_map_vi; int dma_map_be; int dma_map_bk; int dma_map_mg; int dma_map_hi; } ;
struct TYPE_2__ {int bulkout_num; } ;
struct rtw_dev {TYPE_1__ hci; struct rtw_chip_info* chip; } ;
struct rtw_chip_info {struct rtw_rqpn* rqpn_table; } ;


 int BIT_H2CQ_FULL ;
 int BIT_TXDMA_BEQ_MAP (int ) ;
 int BIT_TXDMA_BKQ_MAP (int ) ;
 int BIT_TXDMA_HIQ_MAP (int ) ;
 int BIT_TXDMA_MGQ_MAP (int ) ;
 int BIT_TXDMA_VIQ_MAP (int ) ;
 int BIT_TXDMA_VOQ_MAP (int ) ;
 int EINVAL ;
 int MAC_TRX_ENABLE ;
 int REG_CR ;
 int REG_H2CQ_CSR ;
 int REG_TXDMA_PQ_MAP ;


 int rtw_hci_type (struct rtw_dev*) ;
 int rtw_write16 (struct rtw_dev*,int ,int ) ;
 int rtw_write32 (struct rtw_dev*,int ,int ) ;
 int rtw_write8 (struct rtw_dev*,int ,int ) ;

__attribute__((used)) static int txdma_queue_mapping(struct rtw_dev *rtwdev)
{
 struct rtw_chip_info *chip = rtwdev->chip;
 struct rtw_rqpn *rqpn = ((void*)0);
 u16 txdma_pq_map = 0;

 switch (rtw_hci_type(rtwdev)) {
 case 129:
  rqpn = &chip->rqpn_table[1];
  break;
 case 128:
  if (rtwdev->hci.bulkout_num == 2)
   rqpn = &chip->rqpn_table[2];
  else if (rtwdev->hci.bulkout_num == 3)
   rqpn = &chip->rqpn_table[3];
  else if (rtwdev->hci.bulkout_num == 4)
   rqpn = &chip->rqpn_table[4];
  else
   return -EINVAL;
  break;
 default:
  return -EINVAL;
 }

 txdma_pq_map |= BIT_TXDMA_HIQ_MAP(rqpn->dma_map_hi);
 txdma_pq_map |= BIT_TXDMA_MGQ_MAP(rqpn->dma_map_mg);
 txdma_pq_map |= BIT_TXDMA_BKQ_MAP(rqpn->dma_map_bk);
 txdma_pq_map |= BIT_TXDMA_BEQ_MAP(rqpn->dma_map_be);
 txdma_pq_map |= BIT_TXDMA_VIQ_MAP(rqpn->dma_map_vi);
 txdma_pq_map |= BIT_TXDMA_VOQ_MAP(rqpn->dma_map_vo);
 rtw_write16(rtwdev, REG_TXDMA_PQ_MAP, txdma_pq_map);

 rtw_write8(rtwdev, REG_CR, 0);
 rtw_write8(rtwdev, REG_CR, MAC_TRX_ENABLE);
 rtw_write32(rtwdev, REG_H2CQ_CSR, BIT_H2CQ_FULL);

 return 0;
}
