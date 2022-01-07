
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct rtc_time {int dummy; } ;
struct device {int dummy; } ;
typedef scalar_t__ __le32 ;


 int ds2404_read_memory (struct device*,int,int,int *) ;
 unsigned long le32_to_cpu (scalar_t__) ;
 int rtc_time64_to_tm (unsigned long,struct rtc_time*) ;

__attribute__((used)) static int ds2404_read_time(struct device *dev, struct rtc_time *dt)
{
 unsigned long time = 0;
 __le32 hw_time = 0;

 ds2404_read_memory(dev, 0x203, 4, (u8 *)&hw_time);
 time = le32_to_cpu(hw_time);

 rtc_time64_to_tm(time, dt);
 return 0;
}
