
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct hal_com_data {int LastHMEBoxNum; } ;
struct adapter {scalar_t__ bSurpriseRemoved; } ;
typedef int s32 ;
struct TYPE_2__ {int h2c_fwcmd_mutex; } ;


 int DBG_8192C (char*) ;
 struct hal_com_data* GET_HAL_DATA (struct adapter*) ;
 struct adapter* GET_PRIMARY_ADAPTER (struct adapter*) ;
 int MAX_H2C_BOX_NUMS ;
 int MESSAGE_BOX_SIZE ;
 int REG_HMEBOX_0 ;
 int REG_HMEBOX_EXT0_8723B ;
 int RTL8723B_EX_MESSAGE_BOX_SIZE ;
 int RTL8723B_MAX_CMD_LEN ;
 int _FAIL ;
 int _SUCCESS ;
 int _is_fw_read_cmd_down (struct adapter*,int) ;
 TYPE_1__* adapter_to_dvobj (struct adapter*) ;
 int memcpy (int*,int*,int) ;
 scalar_t__ mutex_lock_interruptible (int *) ;
 int mutex_unlock (int *) ;
 int rtw_write32 (struct adapter*,int,int) ;

s32 FillH2CCmd8723B(struct adapter *padapter, u8 ElementID, u32 CmdLen, u8 *pCmdBuffer)
{
 u8 h2c_box_num;
 u32 msgbox_addr;
 u32 msgbox_ex_addr = 0;
 struct hal_com_data *pHalData;
 u32 h2c_cmd = 0;
 u32 h2c_cmd_ex = 0;
 s32 ret = _FAIL;

 padapter = GET_PRIMARY_ADAPTER(padapter);
 pHalData = GET_HAL_DATA(padapter);
 if (mutex_lock_interruptible(&(adapter_to_dvobj(padapter)->h2c_fwcmd_mutex)))
  return ret;

 if (!pCmdBuffer) {
  goto exit;
 }

 if (CmdLen > RTL8723B_MAX_CMD_LEN) {
  goto exit;
 }

 if (padapter->bSurpriseRemoved)
  goto exit;


 do {
  h2c_box_num = pHalData->LastHMEBoxNum;

  if (!_is_fw_read_cmd_down(padapter, h2c_box_num)) {
   DBG_8192C(" fw read cmd failed...\n");


   goto exit;
  }

  if (CmdLen <= 3)
   memcpy((u8 *)(&h2c_cmd)+1, pCmdBuffer, CmdLen);
  else {
   memcpy((u8 *)(&h2c_cmd)+1, pCmdBuffer, 3);
   memcpy((u8 *)(&h2c_cmd_ex), pCmdBuffer+3, CmdLen-3);

  }

  *(u8 *)(&h2c_cmd) |= ElementID;

  if (CmdLen > 3) {
   msgbox_ex_addr = REG_HMEBOX_EXT0_8723B + (h2c_box_num*RTL8723B_EX_MESSAGE_BOX_SIZE);
   rtw_write32(padapter, msgbox_ex_addr, h2c_cmd_ex);
  }
  msgbox_addr = REG_HMEBOX_0 + (h2c_box_num*MESSAGE_BOX_SIZE);
  rtw_write32(padapter, msgbox_addr, h2c_cmd);




  pHalData->LastHMEBoxNum = (h2c_box_num+1) % MAX_H2C_BOX_NUMS;

 } while (0);

 ret = _SUCCESS;

exit:

 mutex_unlock(&(adapter_to_dvobj(padapter)->h2c_fwcmd_mutex));
 return ret;
}
