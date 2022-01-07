
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;


 int BUG_ON (int) ;
 int lv1_get_rtc (int *,int *) ;

__attribute__((used)) static u64 read_rtc(void)
{
 int result;
 u64 rtc_val;
 u64 tb_val;

 result = lv1_get_rtc(&rtc_val, &tb_val);
 BUG_ON(result);

 return rtc_val;
}
