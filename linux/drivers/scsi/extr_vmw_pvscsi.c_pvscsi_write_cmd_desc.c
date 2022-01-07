
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int const u32 ;
struct pvscsi_adapter {int dummy; } ;


 int PVSCSI_REG_OFFSET_COMMAND ;
 int PVSCSI_REG_OFFSET_COMMAND_DATA ;
 int pvscsi_reg_write (struct pvscsi_adapter const*,int ,int const) ;

__attribute__((used)) static void pvscsi_write_cmd_desc(const struct pvscsi_adapter *adapter,
      u32 cmd, const void *desc, size_t len)
{
 const u32 *ptr = desc;
 size_t i;

 len /= sizeof(*ptr);
 pvscsi_reg_write(adapter, PVSCSI_REG_OFFSET_COMMAND, cmd);
 for (i = 0; i < len; i++)
  pvscsi_reg_write(adapter,
     PVSCSI_REG_OFFSET_COMMAND_DATA, ptr[i]);
}
