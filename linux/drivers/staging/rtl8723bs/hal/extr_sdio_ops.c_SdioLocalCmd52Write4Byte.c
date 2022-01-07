
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
typedef int __le32 ;


 int HalSdioGetCmdAddr8723BSdio (struct adapter*,int ,int ,int *) ;
 int SDIO_LOCAL_DEVICE_ID ;
 int cpu_to_le32 (int ) ;
 int sd_cmd52_write (struct intf_hdl*,int ,int,int *) ;

__attribute__((used)) static void SdioLocalCmd52Write4Byte(struct adapter *adapter, u32 addr, u32 v)
{
 struct intf_hdl *intfhdl = &adapter->iopriv.intf;
 __le32 le_tmp;

 HalSdioGetCmdAddr8723BSdio(adapter, SDIO_LOCAL_DEVICE_ID, addr, &addr);
 le_tmp = cpu_to_le32(v);
 sd_cmd52_write(intfhdl, addr, 4, (u8 *)&le_tmp);
}
