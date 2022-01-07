
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtc_time {void* tm_year; void* tm_mon; void* tm_mday; void* tm_hour; void* tm_min; void* tm_sec; } ;
struct device {int dummy; } ;


 int ARRAY_SIZE (unsigned char*) ;
 unsigned char RDAYCNT ;
 unsigned char RHRCNT ;
 unsigned char RMINCNT ;
 unsigned char RMONCNT ;
 unsigned char RSECCNT ;
 unsigned char RYRCNT ;
 void* bcd2bin (unsigned char) ;
 int memset (struct rtc_time*,int ,int) ;
 int read_regs (struct device*,unsigned char*,int ) ;

__attribute__((used)) static int r9701_get_datetime(struct device *dev, struct rtc_time *dt)
{
 int ret;
 unsigned char buf[] = { RSECCNT, RMINCNT, RHRCNT,
    RDAYCNT, RMONCNT, RYRCNT };

 ret = read_regs(dev, buf, ARRAY_SIZE(buf));
 if (ret)
  return ret;

 memset(dt, 0, sizeof(*dt));

 dt->tm_sec = bcd2bin(buf[0]);
 dt->tm_min = bcd2bin(buf[1]);
 dt->tm_hour = bcd2bin(buf[2]);

 dt->tm_mday = bcd2bin(buf[3]);
 dt->tm_mon = bcd2bin(buf[4]) - 1;
 dt->tm_year = bcd2bin(buf[5]) + 100;





 return 0;
}
