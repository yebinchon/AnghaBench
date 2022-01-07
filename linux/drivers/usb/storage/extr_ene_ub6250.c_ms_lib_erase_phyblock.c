
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u16 ;
struct us_data {scalar_t__ extra; } ;
struct TYPE_2__ {size_t NumberOfPhyBlock; size_t* Phy2LogMap; size_t NumberOfLogBlock; void** Log2PhyMap; } ;
struct ene_ub6250_info {TYPE_1__ MS_Lib; } ;



 void* MS_LB_NOT_USED ;
 size_t MS_LB_NOT_USED_ERASED ;
 int MS_LIB_CTRL_RDONLY ;



 int ms_lib_ctrl_set (struct ene_ub6250_info*,int ) ;
 int ms_lib_error_phyblock (struct us_data*,size_t) ;
 scalar_t__ ms_lib_iswritable (struct ene_ub6250_info*) ;
 int ms_lib_setacquired_errorblock (struct us_data*,size_t) ;
 int ms_read_eraseblock (struct us_data*,size_t) ;

__attribute__((used)) static int ms_lib_erase_phyblock(struct us_data *us, u16 phyblk)
{
 u16 log;
 struct ene_ub6250_info *info = (struct ene_ub6250_info *) us->extra;

 if (phyblk >= info->MS_Lib.NumberOfPhyBlock)
  return 130;

 log = info->MS_Lib.Phy2LogMap[phyblk];

 if (log < info->MS_Lib.NumberOfLogBlock)
  info->MS_Lib.Log2PhyMap[log] = MS_LB_NOT_USED;

 info->MS_Lib.Phy2LogMap[phyblk] = MS_LB_NOT_USED;

 if (ms_lib_iswritable(info)) {
  switch (ms_read_eraseblock(us, phyblk)) {
  case 128:
   info->MS_Lib.Phy2LogMap[phyblk] = MS_LB_NOT_USED_ERASED;
   return 128;
  case 131:
  case 129:
   ms_lib_error_phyblock(us, phyblk);
   return 131;
  case 130:
  default:
   ms_lib_ctrl_set(info, MS_LIB_CTRL_RDONLY);
   ms_lib_setacquired_errorblock(us, phyblk);
   return 130;
  }
 }

 ms_lib_setacquired_errorblock(us, phyblk);

 return 128;
}
