
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SBC7240_MAX_TIMEOUT ;
 int SBC7240_SET_TIMEOUT_PORT ;
 int outb_p (unsigned int,int ) ;
 int pr_err (char*,int) ;
 int pr_info (char*,int) ;
 int timeout ;

__attribute__((used)) static int wdt_set_timeout(int t)
{
 if (t < 1 || t > SBC7240_MAX_TIMEOUT) {
  pr_err("timeout value must be 1<=x<=%d\n", SBC7240_MAX_TIMEOUT);
  return -1;
 }

 outb_p((unsigned)t, SBC7240_SET_TIMEOUT_PORT);
 timeout = t;
 pr_info("timeout set to %d seconds\n", t);
 return 0;
}
