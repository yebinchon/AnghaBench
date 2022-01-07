
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
typedef int u32 ;
struct _adapter {int dummy; } ;


 int IOCMD_DATA_REG ;
 int r8712_read32 (struct _adapter*,int ) ;
 int r8712_write32 (struct _adapter*,int ,int ) ;

void r8712_fw_cmd_data(struct _adapter *pAdapter, u32 *value, u8 flag)
{
 if (flag == 0)
  r8712_write32(pAdapter, IOCMD_DATA_REG, *value);
 else
  *value = r8712_read32(pAdapter, IOCMD_DATA_REG);
}
