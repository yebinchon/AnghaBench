
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;


 int NVME_CC_SHN_SHIFT ;

__attribute__((used)) static inline u8 nvmet_cc_shn(u32 cc)
{
 return (cc >> NVME_CC_SHN_SHIFT) & 0x3;
}
