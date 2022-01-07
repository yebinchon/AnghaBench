
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct snvs_rtc_data {TYPE_1__* rtc; } ;
struct TYPE_2__ {int dev; } ;


 int ETIMEDOUT ;
 int dev_err (int *,char*) ;
 int rtc_read_lp_counter_lsb (struct snvs_rtc_data*,int*) ;

__attribute__((used)) static int rtc_write_sync_lp(struct snvs_rtc_data *data)
{
 u32 count1, count2;
 u32 elapsed;
 unsigned int timeout = 1000;
 int ret;

 ret = rtc_read_lp_counter_lsb(data, &count1);
 if (ret)
  return ret;


 do {
  ret = rtc_read_lp_counter_lsb(data, &count2);
  if (ret)
   return ret;
  elapsed = count2 - count1;
 } while (elapsed < 3 && --timeout);
 if (!timeout) {
  dev_err(&data->rtc->dev, "Timeout waiting for LPSRT Counter to change\n");
  return -ETIMEDOUT;
 }
 return 0;
}
