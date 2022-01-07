
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef scalar_t__ u32 ;
struct sdio_data {scalar_t__ block_transfer_len; } ;
struct intf_hdl {struct adapter* padapter; } ;
struct hal_com_data {int SdioRxFIFOCnt; } ;
struct adapter {int dummy; } ;
typedef scalar_t__ s32 ;
struct TYPE_2__ {struct sdio_data intf_data; } ;


 struct hal_com_data* GET_HAL_DATA (struct adapter*) ;
 int HalSdioGetCmdAddr8723BSdio (struct adapter*,scalar_t__,int ,scalar_t__*) ;
 scalar_t__ _FAIL ;
 scalar_t__ _RND (scalar_t__,scalar_t__) ;
 scalar_t__ _SUCCESS ;
 scalar_t__ _sd_read (struct intf_hdl*,scalar_t__,scalar_t__,int *) ;
 TYPE_1__* adapter_to_dvobj (struct adapter*) ;

__attribute__((used)) static u32 sdio_read_port(
 struct intf_hdl *intfhdl,
 u32 addr,
 u32 cnt,
 u8 *mem
)
{
 struct adapter *adapter;
 struct sdio_data *psdio;
 struct hal_com_data *hal;
 u32 oldcnt;
 s32 err;


 adapter = intfhdl->padapter;
 psdio = &adapter_to_dvobj(adapter)->intf_data;
 hal = GET_HAL_DATA(adapter);

 HalSdioGetCmdAddr8723BSdio(adapter, addr, hal->SdioRxFIFOCnt++, &addr);

 oldcnt = cnt;
 if (cnt > psdio->block_transfer_len)
  cnt = _RND(cnt, psdio->block_transfer_len);


 err = _sd_read(intfhdl, addr, cnt, mem);

 if (err)
  return _FAIL;
 return _SUCCESS;
}
