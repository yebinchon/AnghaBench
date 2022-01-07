
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
typedef int u16 ;
struct intf_hdl {int dummy; } ;
struct TYPE_2__ {struct intf_hdl intf; } ;
struct adapter {TYPE_1__ iopriv; } ;
typedef scalar_t__ __le16 ;


 int HalSdioGetCmdAddr8723BSdio (struct adapter*,int ,int ,int *) ;
 int SDIO_LOCAL_DEVICE_ID ;
 int le16_to_cpu (scalar_t__) ;
 int sd_cmd52_read (struct intf_hdl*,int ,int,int *) ;

__attribute__((used)) static u16 SdioLocalCmd52Read2Byte(struct adapter *adapter, u32 addr)
{
 __le16 val = 0;
 struct intf_hdl *intfhdl = &adapter->iopriv.intf;

 HalSdioGetCmdAddr8723BSdio(adapter, SDIO_LOCAL_DEVICE_ID, addr, &addr);
 sd_cmd52_read(intfhdl, addr, 2, (u8 *)&val);

 return le16_to_cpu(val);
}
