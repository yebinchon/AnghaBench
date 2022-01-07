
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct afu {int interface_version; } ;


 int SISL_INTVER_CAP_SHIFT ;

__attribute__((used)) static inline bool afu_has_cap(struct afu *afu, u64 cap)
{
 u64 afu_cap = afu->interface_version >> SISL_INTVER_CAP_SHIFT;

 return afu_cap & cap;
}
