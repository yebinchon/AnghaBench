
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
typedef int u32 ;
struct snvs_rtc_data {TYPE_1__* rtc; } ;
struct TYPE_2__ {int dev; } ;


 int CNTR_TO_SECS_SH ;
 int dev_err (int *,char*) ;
 int rtc_read_lpsrt (struct snvs_rtc_data*) ;

__attribute__((used)) static u32 rtc_read_lp_counter(struct snvs_rtc_data *data)
{
 u64 read1, read2;
 unsigned int timeout = 100;





 read1 = rtc_read_lpsrt(data);
 do {
  read2 = read1;
  read1 = rtc_read_lpsrt(data);
 } while (read1 != read2 && --timeout);
 if (!timeout)
  dev_err(&data->rtc->dev, "Timeout trying to get valid LPSRT Counter read\n");


 return (u32) (read1 >> CNTR_TO_SECS_SH);
}
