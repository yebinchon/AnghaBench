
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mvs_info {int dummy; } ;


 scalar_t__ MVS_COMMAND_ACTIVE ;
 int mv_printk (char*,int,int) ;
 int mvs_cr32 (struct mvs_info*,scalar_t__) ;
 int mvs_cw32 (struct mvs_info*,scalar_t__,int) ;

__attribute__((used)) static void mvs_94xx_command_active(struct mvs_info *mvi, u32 slot_idx)
{
 u32 tmp;
 tmp = mvs_cr32(mvi, MVS_COMMAND_ACTIVE+(slot_idx >> 3));
 if (tmp & 1 << (slot_idx % 32)) {
  mv_printk("command active %08X,  slot [%x].\n", tmp, slot_idx);
  mvs_cw32(mvi, MVS_COMMAND_ACTIVE + (slot_idx >> 3),
   1 << (slot_idx % 32));
  do {
   tmp = mvs_cr32(mvi,
    MVS_COMMAND_ACTIVE + (slot_idx >> 3));
  } while (tmp & 1 << (slot_idx % 32));
 }
}
