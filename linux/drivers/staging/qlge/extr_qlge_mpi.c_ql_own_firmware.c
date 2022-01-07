
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ql_adapter {int func; int alt_func; } ;


 int STS ;
 int ql_read32 (struct ql_adapter*,int ) ;

int ql_own_firmware(struct ql_adapter *qdev)
{
 u32 temp;





 if (qdev->func < qdev->alt_func)
  return 1;






 temp = ql_read32(qdev, STS);
 if (!(temp & (1 << (8 + qdev->alt_func))))
  return 1;

 return 0;

}
