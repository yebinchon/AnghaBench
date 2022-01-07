
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ql_adapter {int dummy; } ;


 unsigned int ql_read_other_func_serdes_reg (struct ql_adapter*,int,int*) ;
 unsigned int ql_read_serdes_reg (struct ql_adapter*,int,int*) ;

__attribute__((used)) static void ql_get_both_serdes(struct ql_adapter *qdev, u32 addr,
   u32 *direct_ptr, u32 *indirect_ptr,
   unsigned int direct_valid, unsigned int indirect_valid)
{
 unsigned int status;

 status = 1;
 if (direct_valid)
  status = ql_read_serdes_reg(qdev, addr, direct_ptr);

 if (status)
  *direct_ptr = 0xDEADBEEF;

 status = 1;
 if (indirect_valid)
  status = ql_read_other_func_serdes_reg(
      qdev, addr, indirect_ptr);

 if (status)
  *indirect_ptr = 0xDEADBEEF;
}
