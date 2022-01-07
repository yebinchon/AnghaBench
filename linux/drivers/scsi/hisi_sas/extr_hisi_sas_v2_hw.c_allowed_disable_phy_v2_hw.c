
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hisi_hba {int dummy; } ;


 int axi_bus_is_idle_v2_hw (struct hisi_hba*,int) ;
 scalar_t__ tx_fifo_is_empty_v2_hw (struct hisi_hba*,int) ;
 int wait_io_done_v2_hw (struct hisi_hba*,int) ;

__attribute__((used)) static bool allowed_disable_phy_v2_hw(struct hisi_hba *hisi_hba, int phy_no)
{
 if (tx_fifo_is_empty_v2_hw(hisi_hba, phy_no))
  return 1;

 if (!axi_bus_is_idle_v2_hw(hisi_hba, phy_no))
  return 0;

 if (!wait_io_done_v2_hw(hisi_hba, phy_no))
  return 0;

 return 1;
}
