
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
typedef int u16 ;
struct _adapter {int dummy; } ;
struct IOCMD_STRUCT {int value; int index; int cmdclass; } ;


 int IOCMD_CLASS_BB_RF ;
 int IOCMD_RF_READ_IDX ;
 int fw_iocmd_read (struct _adapter*,struct IOCMD_STRUCT) ;

u32 r8712_rf_reg_read(struct _adapter *pAdapter, u8 path, u8 offset)
{
 u16 rf_addr = (path << 8) | offset;
 struct IOCMD_STRUCT iocmd;

 iocmd.cmdclass = IOCMD_CLASS_BB_RF;
 iocmd.value = rf_addr;
 iocmd.index = IOCMD_RF_READ_IDX;
 return fw_iocmd_read(pAdapter, iocmd);
}
