
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct snvs_rtc_data {TYPE_1__* rtc; scalar_t__ offset; int regmap; } ;
struct TYPE_2__ {int dev; } ;


 int ETIMEDOUT ;
 scalar_t__ SNVS_LPSRTCLR ;
 int dev_err (int *,char*) ;
 int regmap_read (int ,scalar_t__,scalar_t__*) ;

__attribute__((used)) static int rtc_read_lp_counter_lsb(struct snvs_rtc_data *data, u32 *lsb)
{
 u32 count1, count2;
 unsigned int timeout = 100;

 regmap_read(data->regmap, data->offset + SNVS_LPSRTCLR, &count1);
 do {
  count2 = count1;
  regmap_read(data->regmap, data->offset + SNVS_LPSRTCLR, &count1);
 } while (count1 != count2 && --timeout);
 if (!timeout) {
  dev_err(&data->rtc->dev, "Timeout trying to get valid LPSRT Counter read\n");
  return -ETIMEDOUT;
 }

 *lsb = count1;
 return 0;
}
