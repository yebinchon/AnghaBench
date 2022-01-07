
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int NVME_CC_EN_SHIFT ;

__attribute__((used)) static inline bool nvmet_cc_en(u32 cc)
{
 return (cc >> NVME_CC_EN_SHIFT) & 0x1;
}
