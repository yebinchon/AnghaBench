
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
typedef int u32 ;
typedef int u16 ;
struct _adapter {int dummy; } ;
struct IOCMD_STRUCT {int value; int index; int cmdclass; } ;


 int IOCMD_BB_WRITE_IDX ;
 int IOCMD_CLASS_BB_RF ;
 scalar_t__ fw_iocmd_write (struct _adapter*,struct IOCMD_STRUCT,int) ;
 int r8712_bb_reg_read (struct _adapter*,int) ;

u8 r8712_bb_reg_write(struct _adapter *pAdapter, u16 offset, u32 value)
{
 u8 shift = offset & 0x0003;
 u16 bb_addr = offset & 0x0FFC;
 struct IOCMD_STRUCT iocmd;

 iocmd.cmdclass = IOCMD_CLASS_BB_RF;
 iocmd.value = bb_addr;
 iocmd.index = IOCMD_BB_WRITE_IDX;
 if (shift != 0) {
  u32 oldValue = 0;
  u32 newValue = value;

  oldValue = r8712_bb_reg_read(pAdapter, iocmd.value);
  oldValue &= (0xFFFFFFFF >> ((4 - shift) * 8));
  value = oldValue | (newValue << (shift * 8));
  if (!fw_iocmd_write(pAdapter, iocmd, value))
   return 0;
  iocmd.value += 4;
  oldValue = r8712_bb_reg_read(pAdapter, iocmd.value);
  oldValue &= (0xFFFFFFFF << (shift * 8));
  value = oldValue | (newValue >> ((4 - shift) * 8));
 }
 return fw_iocmd_write(pAdapter, iocmd, value);
}
