
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ds1307 {int type; int rtc; } ;





 int rtc_add_group (int ,int *) ;
 int rtc_freq_test_attr_group ;

__attribute__((used)) static int ds1307_add_frequency_test(struct ds1307 *ds1307)
{
 int err;

 switch (ds1307->type) {
 case 130:
 case 129:
 case 128:
  err = rtc_add_group(ds1307->rtc, &rtc_freq_test_attr_group);
  if (err)
   return err;
  break;
 default:
  break;
 }

 return 0;
}
