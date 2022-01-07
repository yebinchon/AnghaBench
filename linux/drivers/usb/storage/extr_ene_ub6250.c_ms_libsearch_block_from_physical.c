
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u16 ;
struct us_data {scalar_t__ extra; } ;
struct ms_lib_type_extdat {int ovrflg; } ;
struct TYPE_2__ {scalar_t__ NumberOfPhyBlock; scalar_t__* Phy2LogMap; } ;
struct ene_ub6250_info {TYPE_1__ MS_Lib; } ;




 int MS_LB_ERROR ;
 scalar_t__ MS_LB_NOT_USED ;
 scalar_t__ MS_LB_NOT_USED_ERASED ;

 scalar_t__ MS_PHYSICAL_BLOCKS_PER_SEGMENT ;
 scalar_t__ MS_PHYSICAL_BLOCKS_PER_SEGMENT_MASK ;
 int MS_REG_OVR_BKST ;
 int MS_REG_OVR_BKST_OK ;




 int ms_lib_erase_phyblock (struct us_data*,scalar_t__) ;
 int ms_lib_error_phyblock (struct us_data*,scalar_t__) ;
 int ms_lib_read_extra (struct us_data*,scalar_t__,int ,struct ms_lib_type_extdat*) ;
 int ms_lib_setacquired_errorblock (struct us_data*,scalar_t__) ;

__attribute__((used)) static int ms_libsearch_block_from_physical(struct us_data *us, u16 phyblk)
{
 u16 blk;
 struct ms_lib_type_extdat extdat;
 struct ene_ub6250_info *info = (struct ene_ub6250_info *) us->extra;


 if (phyblk >= info->MS_Lib.NumberOfPhyBlock)
  return MS_LB_ERROR;

 for (blk = phyblk + 1; blk != phyblk; blk++) {
  if ((blk & MS_PHYSICAL_BLOCKS_PER_SEGMENT_MASK) == 0)
   blk -= MS_PHYSICAL_BLOCKS_PER_SEGMENT;

  if (info->MS_Lib.Phy2LogMap[blk] == MS_LB_NOT_USED_ERASED) {
   return blk;
  } else if (info->MS_Lib.Phy2LogMap[blk] == MS_LB_NOT_USED) {
   switch (ms_lib_read_extra(us, blk, 0, &extdat)) {
   case 129:
   case 128:
    break;
   case 132:
    return 132;
   case 130:
    return MS_LB_ERROR;
   case 133:
   default:
    ms_lib_setacquired_errorblock(us, blk);
    continue;
   }

   if ((extdat.ovrflg & MS_REG_OVR_BKST) != MS_REG_OVR_BKST_OK) {
    ms_lib_setacquired_errorblock(us, blk);
    continue;
   }

   switch (ms_lib_erase_phyblock(us, blk)) {
   case 129:
    return blk;
   case 131:
    return MS_LB_ERROR;
   case 134:
   default:
    ms_lib_error_phyblock(us, blk);
    break;
   }
  }
 }

 return MS_LB_ERROR;
}
