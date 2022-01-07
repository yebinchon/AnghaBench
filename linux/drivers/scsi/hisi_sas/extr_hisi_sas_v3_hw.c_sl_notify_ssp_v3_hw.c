
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct hisi_hba {int dummy; } ;


 int SL_CONTROL ;
 int SL_CONTROL_NOTIFY_EN_MSK ;
 int hisi_sas_phy_read32 (struct hisi_hba*,int,int ) ;
 int hisi_sas_phy_write32 (struct hisi_hba*,int,int ,int ) ;
 int msleep (int) ;

__attribute__((used)) static void sl_notify_ssp_v3_hw(struct hisi_hba *hisi_hba, int phy_no)
{
 u32 sl_control;

 sl_control = hisi_sas_phy_read32(hisi_hba, phy_no, SL_CONTROL);
 sl_control |= SL_CONTROL_NOTIFY_EN_MSK;
 hisi_sas_phy_write32(hisi_hba, phy_no, SL_CONTROL, sl_control);
 msleep(1);
 sl_control = hisi_sas_phy_read32(hisi_hba, phy_no, SL_CONTROL);
 sl_control &= ~SL_CONTROL_NOTIFY_EN_MSK;
 hisi_sas_phy_write32(hisi_hba, phy_no, SL_CONTROL, sl_control);
}
