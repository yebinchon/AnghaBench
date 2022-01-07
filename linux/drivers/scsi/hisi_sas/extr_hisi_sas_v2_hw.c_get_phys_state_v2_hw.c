
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct hisi_hba {int dummy; } ;


 int PHY_STATE ;
 int hisi_sas_read32 (struct hisi_hba*,int ) ;

__attribute__((used)) static u32 get_phys_state_v2_hw(struct hisi_hba *hisi_hba)
{
 return hisi_sas_read32(hisi_hba, PHY_STATE);
}
