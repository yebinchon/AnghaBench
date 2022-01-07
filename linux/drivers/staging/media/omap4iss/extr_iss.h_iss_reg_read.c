
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct iss_device {scalar_t__* regs; } ;
typedef enum iss_mem_resources { ____Placeholder_iss_mem_resources } iss_mem_resources ;


 scalar_t__ readl (scalar_t__) ;

__attribute__((used)) static inline
u32 iss_reg_read(struct iss_device *iss, enum iss_mem_resources res,
   u32 offset)
{
 return readl(iss->regs[res] + offset);
}
