
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct pvscsi_adapter {int dummy; } ;
struct PVSCSICmdDescResetDevice {int target; int member_0; } ;
typedef int cmd ;


 int PVSCSI_CMD_RESET_DEVICE ;
 int dev_dbg (int ,char*,int ) ;
 int pvscsi_dev (struct pvscsi_adapter const*) ;
 int pvscsi_write_cmd_desc (struct pvscsi_adapter const*,int ,struct PVSCSICmdDescResetDevice*,int) ;

__attribute__((used)) static void ll_device_reset(const struct pvscsi_adapter *adapter, u32 target)
{
 struct PVSCSICmdDescResetDevice cmd = { 0 };

 dev_dbg(pvscsi_dev(adapter), "Resetting device: target=%u\n", target);

 cmd.target = target;

 pvscsi_write_cmd_desc(adapter, PVSCSI_CMD_RESET_DEVICE,
         &cmd, sizeof(cmd));
}
