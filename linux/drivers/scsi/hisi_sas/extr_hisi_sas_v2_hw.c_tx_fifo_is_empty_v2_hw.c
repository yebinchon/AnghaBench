
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct hisi_hba {int dummy; } ;


 int BIT (int) ;
 int DMA_TX_DFX1 ;
 int hisi_sas_phy_read32 (struct hisi_hba*,int,int ) ;

__attribute__((used)) static bool tx_fifo_is_empty_v2_hw(struct hisi_hba *hisi_hba, int phy_no)
{
 u32 dfx_val;

 dfx_val = hisi_sas_phy_read32(hisi_hba, phy_no, DMA_TX_DFX1);

 if (dfx_val & BIT(16))
  return 0;

 return 1;
}
