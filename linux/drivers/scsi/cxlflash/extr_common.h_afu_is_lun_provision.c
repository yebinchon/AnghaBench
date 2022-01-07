
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct afu {int dummy; } ;


 int SISL_INTVER_CAP_LUN_PROVISION ;
 int afu_has_cap (struct afu*,int ) ;

__attribute__((used)) static inline bool afu_is_lun_provision(struct afu *afu)
{
 return afu_has_cap(afu, SISL_INTVER_CAP_LUN_PROVISION);
}
