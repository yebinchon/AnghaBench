
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ql_adapter {int dummy; } ;


 int ETIMEDOUT ;
 int STS ;
 int STS_PI ;
 int UDELAY_DELAY ;
 int mdelay (int ) ;
 int ql_read32 (struct ql_adapter*,int ) ;

__attribute__((used)) static int ql_wait_mbx_cmd_cmplt(struct ql_adapter *qdev)
{
 int count = 100;
 u32 value;

 do {
  value = ql_read32(qdev, STS);
  if (value & STS_PI)
   return 0;
  mdelay(UDELAY_DELAY);
 } while (--count);
 return -ETIMEDOUT;
}
