
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
typedef int u16 ;
struct _adapter {int dummy; } ;
struct IOCMD_STRUCT {int cmdclass; int value; int index; } ;


 scalar_t__ r8712_fw_cmd (struct _adapter*,int) ;
 int r8712_fw_cmd_data (struct _adapter*,int*,int) ;

__attribute__((used)) static u32 fw_iocmd_read(struct _adapter *pAdapter, struct IOCMD_STRUCT iocmd)
{
 u32 cmd32 = 0, val32 = 0;
 u8 iocmd_class = iocmd.cmdclass;
 u16 iocmd_value = iocmd.value;
 u8 iocmd_idx = iocmd.index;

 cmd32 = (iocmd_class << 24) | (iocmd_value << 8) | iocmd_idx;
 if (r8712_fw_cmd(pAdapter, cmd32))
  r8712_fw_cmd_data(pAdapter, &val32, 1);
 else
  val32 = 0;
 return val32;
}
