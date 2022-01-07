
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int countdown_reset ;
 int divisor ;
 int heartbeat ;
 int max_timeout_sec ;
 int octeon_get_io_clock_rate () ;
 int timeout_cnt ;
 int timeout_sec ;

__attribute__((used)) static void octeon_wdt_calc_parameters(int t)
{
 unsigned int periods;

 timeout_sec = max_timeout_sec;






 while ((t % timeout_sec) != 0)
  timeout_sec--;

 periods = t / timeout_sec;






 countdown_reset = periods > 2 ? periods - 2 : 0;
 heartbeat = t;
 timeout_cnt = ((octeon_get_io_clock_rate() / divisor) * timeout_sec) >> 8;
}
