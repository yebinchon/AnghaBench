
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct rtc_time {int dummy; } ;
struct device {int dummy; } ;


 int cpu_to_le32 (int ) ;
 int ds2404_write_memory (struct device*,int,int,int *) ;
 int rtc_tm_to_time64 (struct rtc_time*) ;

__attribute__((used)) static int ds2404_set_time(struct device *dev, struct rtc_time *dt)
{
 u32 time = cpu_to_le32(rtc_tm_to_time64(dt));
 ds2404_write_memory(dev, 0x203, 4, (u8 *)&time);
 return 0;
}
