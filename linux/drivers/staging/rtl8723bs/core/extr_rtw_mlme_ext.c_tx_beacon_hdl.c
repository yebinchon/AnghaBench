
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct adapter {int dummy; } ;


 int DBG_871X (char*) ;
 int H2C_PARAMETERS_ERROR ;
 int H2C_SUCCESS ;
 scalar_t__ _FAIL ;
 int chk_bmc_sleepq_hdl (struct adapter*,int *) ;
 scalar_t__ send_beacon (struct adapter*) ;

u8 tx_beacon_hdl(struct adapter *padapter, unsigned char *pbuf)
{
 if (send_beacon(padapter) == _FAIL) {
  DBG_871X("issue_beacon, fail!\n");
  return H2C_PARAMETERS_ERROR;
 }


 chk_bmc_sleepq_hdl(padapter, ((void*)0));

 return H2C_SUCCESS;
}
