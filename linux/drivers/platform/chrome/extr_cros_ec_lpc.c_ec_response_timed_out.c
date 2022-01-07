
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_2__ {int (* read ) (int ,int,int *) ;} ;


 int EC_LPC_ADDR_HOST_CMD ;
 int EC_LPC_STATUS_BUSY_MASK ;
 unsigned long HZ ;
 TYPE_1__ cros_ec_lpc_ops ;
 unsigned long jiffies ;
 int stub1 (int ,int,int *) ;
 scalar_t__ time_before (unsigned long,unsigned long) ;
 int usleep_range (int,int) ;

__attribute__((used)) static int ec_response_timed_out(void)
{
 unsigned long one_second = jiffies + HZ;
 u8 data;

 usleep_range(200, 300);
 do {
  if (!(cros_ec_lpc_ops.read(EC_LPC_ADDR_HOST_CMD, 1, &data) &
      EC_LPC_STATUS_BUSY_MASK))
   return 0;
  usleep_range(100, 200);
 } while (time_before(jiffies, one_second));

 return 1;
}
