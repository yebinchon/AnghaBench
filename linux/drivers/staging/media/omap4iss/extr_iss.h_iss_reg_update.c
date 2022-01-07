
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct iss_device {int dummy; } ;
typedef enum iss_mem_resources { ____Placeholder_iss_mem_resources } iss_mem_resources ;


 int iss_reg_read (struct iss_device*,int,int) ;
 int iss_reg_write (struct iss_device*,int,int,int) ;

__attribute__((used)) static inline
void iss_reg_update(struct iss_device *iss, enum iss_mem_resources res,
      u32 offset, u32 clr, u32 set)
{
 u32 v = iss_reg_read(iss, res, offset);

 iss_reg_write(iss, res, offset, (v & ~clr) | set);
}
