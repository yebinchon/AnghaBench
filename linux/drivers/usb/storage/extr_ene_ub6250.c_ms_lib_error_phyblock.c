
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef scalar_t__ u16 ;
struct us_data {scalar_t__ extra; } ;
struct TYPE_2__ {scalar_t__ NumberOfPhyBlock; } ;
struct ene_ub6250_info {TYPE_1__ MS_Lib; } ;


 int BYTE_MASK ;
 int MS_REG_OVR_BKST ;
 int MS_STATUS_ERROR ;
 int MS_STATUS_SUCCESS ;
 scalar_t__ ms_lib_iswritable (struct ene_ub6250_info*) ;
 int ms_lib_overwrite_extra (struct us_data*,scalar_t__,int ,int ) ;
 int ms_lib_setacquired_errorblock (struct us_data*,scalar_t__) ;

__attribute__((used)) static int ms_lib_error_phyblock(struct us_data *us, u16 phyblk)
{
 struct ene_ub6250_info *info = (struct ene_ub6250_info *) us->extra;

 if (phyblk >= info->MS_Lib.NumberOfPhyBlock)
  return MS_STATUS_ERROR;

 ms_lib_setacquired_errorblock(us, phyblk);

 if (ms_lib_iswritable(info))
  return ms_lib_overwrite_extra(us, phyblk, 0, (u8)(~MS_REG_OVR_BKST & BYTE_MASK));

 return MS_STATUS_SUCCESS;
}
