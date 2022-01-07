
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uchar ;
typedef int ADV_DVC_VAR ;





 int ASC_DBG (int ,char*,...) ;
 int AdvResetChipAndSB (int *) ;

__attribute__((used)) static void adv_async_callback(ADV_DVC_VAR *adv_dvc_varp, uchar code)
{
 switch (code) {
 case 129:



  ASC_DBG(0, "ADV_ASYNC_SCSI_BUS_RESET_DET\n");
  break;

 case 130:





  ASC_DBG(0, "ADV_ASYNC_RDMA_FAILURE\n");
  AdvResetChipAndSB(adv_dvc_varp);
  break;

 case 128:



  ASC_DBG(0, "ADV_HOST_SCSI_BUS_RESET\n");
  break;

 default:
  ASC_DBG(0, "unknown code 0x%x\n", code);
  break;
 }
}
