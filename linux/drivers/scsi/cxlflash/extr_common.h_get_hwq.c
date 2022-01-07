
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u32 ;
struct hwq {int dummy; } ;
struct afu {struct hwq* hwqs; } ;


 size_t CXLFLASH_MAX_HWQS ;
 int WARN_ON (int) ;

__attribute__((used)) static inline struct hwq *get_hwq(struct afu *afu, u32 index)
{
 WARN_ON(index >= CXLFLASH_MAX_HWQS);

 return &afu->hwqs[index];
}
