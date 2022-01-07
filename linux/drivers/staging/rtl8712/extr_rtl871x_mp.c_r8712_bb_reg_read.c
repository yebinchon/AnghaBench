
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
typedef int u16 ;
struct _adapter {int dummy; } ;
struct IOCMD_STRUCT {int value; int index; int cmdclass; } ;


 int IOCMD_BB_READ_IDX ;
 int IOCMD_CLASS_BB_RF ;
 int fw_iocmd_read (struct _adapter*,struct IOCMD_STRUCT) ;

u32 r8712_bb_reg_read(struct _adapter *pAdapter, u16 offset)
{
 u8 shift = offset & 0x0003;
 u16 bb_addr = offset & 0x0FFC;
 u32 bb_val = 0;
 struct IOCMD_STRUCT iocmd;

 iocmd.cmdclass = IOCMD_CLASS_BB_RF;
 iocmd.value = bb_addr;
 iocmd.index = IOCMD_BB_READ_IDX;
 bb_val = fw_iocmd_read(pAdapter, iocmd);
 if (shift != 0) {
  u32 bb_val2 = 0;

  bb_val >>= (shift * 8);
  iocmd.value += 4;
  bb_val2 = fw_iocmd_read(pAdapter, iocmd);
  bb_val2 <<= ((4 - shift) * 8);
  bb_val |= bb_val2;
 }
 return bb_val;
}
