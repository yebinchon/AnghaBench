
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct intf_hdl {int dummy; } ;
struct TYPE_2__ {struct intf_hdl intf; } ;
struct adapter {TYPE_1__ iopriv; } ;


 int HalSdioGetCmdAddr8723BSdio (struct adapter*,int ,int ,int *) ;
 int SDIO_LOCAL_DEVICE_ID ;
 int sd_cmd52_write (struct intf_hdl*,int ,int,int *) ;

void SdioLocalCmd52Write1Byte(struct adapter *adapter, u32 addr, u8 v)
{
 struct intf_hdl *intfhdl = &adapter->iopriv.intf;

 HalSdioGetCmdAddr8723BSdio(adapter, SDIO_LOCAL_DEVICE_ID, addr, &addr);
 sd_cmd52_write(intfhdl, addr, 1, &v);
}
