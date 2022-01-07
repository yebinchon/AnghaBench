
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct hisi_hba {int n_phy; } ;


 int BIT (int) ;
 int PHY_PORT_NUM_MA ;
 int PHY_STATE ;
 int hisi_sas_read32 (struct hisi_hba*,int ) ;

__attribute__((used)) static int get_wideport_bitmap_v3_hw(struct hisi_hba *hisi_hba, int port_id)
{
 int i, bitmap = 0;
 u32 phy_port_num_ma = hisi_sas_read32(hisi_hba, PHY_PORT_NUM_MA);
 u32 phy_state = hisi_sas_read32(hisi_hba, PHY_STATE);

 for (i = 0; i < hisi_hba->n_phy; i++)
  if (phy_state & BIT(i))
   if (((phy_port_num_ma >> (i * 4)) & 0xf) == port_id)
    bitmap |= BIT(i);

 return bitmap;
}
