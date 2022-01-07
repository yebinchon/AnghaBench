
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hal_com_data {TYPE_1__* PHYRegDef; } ;
struct adapter {int dummy; } ;
struct TYPE_2__ {int rfLSSIReadBackPi; int rfLSSIReadBack; int rfHSSIPara2; int rf3wireOffset; void* rfintfe; void* rfintfo; void* rfintfs; } ;


 struct hal_com_data* GET_HAL_DATA (struct adapter*) ;
 size_t ODM_RF_PATH_A ;
 size_t ODM_RF_PATH_B ;
 int TransceiverA_HSPI_Readback ;
 int TransceiverB_HSPI_Readback ;
 void* rFPGA0_XAB_RFInterfaceSW ;
 int rFPGA0_XA_HSSIParameter2 ;
 int rFPGA0_XA_LSSIParameter ;
 int rFPGA0_XA_LSSIReadBack ;
 void* rFPGA0_XA_RFInterfaceOE ;
 int rFPGA0_XB_HSSIParameter2 ;
 int rFPGA0_XB_LSSIParameter ;
 int rFPGA0_XB_LSSIReadBack ;
 void* rFPGA0_XB_RFInterfaceOE ;

__attribute__((used)) static void phy_InitBBRFRegisterDefinition(struct adapter *Adapter)
{
 struct hal_com_data *pHalData = GET_HAL_DATA(Adapter);


 pHalData->PHYRegDef[ODM_RF_PATH_A].rfintfs = rFPGA0_XAB_RFInterfaceSW;
 pHalData->PHYRegDef[ODM_RF_PATH_B].rfintfs = rFPGA0_XAB_RFInterfaceSW;


 pHalData->PHYRegDef[ODM_RF_PATH_A].rfintfo = rFPGA0_XA_RFInterfaceOE;
 pHalData->PHYRegDef[ODM_RF_PATH_B].rfintfo = rFPGA0_XB_RFInterfaceOE;


 pHalData->PHYRegDef[ODM_RF_PATH_A].rfintfe = rFPGA0_XA_RFInterfaceOE;
 pHalData->PHYRegDef[ODM_RF_PATH_B].rfintfe = rFPGA0_XB_RFInterfaceOE;

 pHalData->PHYRegDef[ODM_RF_PATH_A].rf3wireOffset = rFPGA0_XA_LSSIParameter;
 pHalData->PHYRegDef[ODM_RF_PATH_B].rf3wireOffset = rFPGA0_XB_LSSIParameter;

 pHalData->PHYRegDef[ODM_RF_PATH_A].rfHSSIPara2 = rFPGA0_XA_HSSIParameter2;
 pHalData->PHYRegDef[ODM_RF_PATH_B].rfHSSIPara2 = rFPGA0_XB_HSSIParameter2;


 pHalData->PHYRegDef[ODM_RF_PATH_A].rfLSSIReadBack = rFPGA0_XA_LSSIReadBack;
 pHalData->PHYRegDef[ODM_RF_PATH_B].rfLSSIReadBack = rFPGA0_XB_LSSIReadBack;
 pHalData->PHYRegDef[ODM_RF_PATH_A].rfLSSIReadBackPi = TransceiverA_HSPI_Readback;
 pHalData->PHYRegDef[ODM_RF_PATH_B].rfLSSIReadBackPi = TransceiverB_HSPI_Readback;

}
