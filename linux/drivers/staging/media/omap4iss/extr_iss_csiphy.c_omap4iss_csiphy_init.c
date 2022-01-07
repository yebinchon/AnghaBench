
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iss_csiphy {int mutex; int phy_regs; int cfg_regs; scalar_t__ used_data_lanes; int max_data_lanes; int * csi2; struct iss_device* iss; } ;
struct iss_device {int csi2b; int csi2a; struct iss_csiphy csiphy2; struct iss_csiphy csiphy1; } ;


 int ISS_CSIPHY1_NUM_DATA_LANES ;
 int ISS_CSIPHY2_NUM_DATA_LANES ;
 int OMAP4_ISS_MEM_CAMERARX_CORE1 ;
 int OMAP4_ISS_MEM_CAMERARX_CORE2 ;
 int OMAP4_ISS_MEM_CSI2_A_REGS1 ;
 int OMAP4_ISS_MEM_CSI2_B_REGS1 ;
 int mutex_init (int *) ;

int omap4iss_csiphy_init(struct iss_device *iss)
{
 struct iss_csiphy *phy1 = &iss->csiphy1;
 struct iss_csiphy *phy2 = &iss->csiphy2;

 phy1->iss = iss;
 phy1->csi2 = &iss->csi2a;
 phy1->max_data_lanes = ISS_CSIPHY1_NUM_DATA_LANES;
 phy1->used_data_lanes = 0;
 phy1->cfg_regs = OMAP4_ISS_MEM_CSI2_A_REGS1;
 phy1->phy_regs = OMAP4_ISS_MEM_CAMERARX_CORE1;
 mutex_init(&phy1->mutex);

 phy2->iss = iss;
 phy2->csi2 = &iss->csi2b;
 phy2->max_data_lanes = ISS_CSIPHY2_NUM_DATA_LANES;
 phy2->used_data_lanes = 0;
 phy2->cfg_regs = OMAP4_ISS_MEM_CSI2_B_REGS1;
 phy2->phy_regs = OMAP4_ISS_MEM_CAMERARX_CORE2;
 mutex_init(&phy2->mutex);

 return 0;
}
