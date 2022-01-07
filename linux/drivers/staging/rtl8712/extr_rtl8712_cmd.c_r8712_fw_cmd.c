
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct _adapter {int dummy; } ;


 scalar_t__ IOCMD_CTRL_REG ;
 int msleep (int) ;
 scalar_t__ r8712_read32 (struct _adapter*,int) ;
 int r8712_write32 (struct _adapter*,scalar_t__,int ) ;

u8 r8712_fw_cmd(struct _adapter *pAdapter, u32 cmd)
{
 int pollingcnts = 50;

 r8712_write32(pAdapter, IOCMD_CTRL_REG, cmd);
 msleep(100);
 while ((r8712_read32(pAdapter, IOCMD_CTRL_REG != 0)) &&
        (pollingcnts > 0)) {
  pollingcnts--;
  msleep(20);
 }
 if (pollingcnts == 0)
  return 0;
 return 1;
}
