
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EINVAL ;
 int ath79_wdt_keepalive () ;
 int max_timeout ;
 int timeout ;

__attribute__((used)) static int ath79_wdt_set_timeout(int val)
{
 if (val < 1 || val > max_timeout)
  return -EINVAL;

 timeout = val;
 ath79_wdt_keepalive();

 return 0;
}
