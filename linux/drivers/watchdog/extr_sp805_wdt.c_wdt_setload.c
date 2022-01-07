
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct watchdog_device {unsigned int timeout; } ;
struct sp805_wdt {int rate; int load_val; int lock; } ;


 int LOAD_MAX ;
 int LOAD_MIN ;
 unsigned int div_u64 (int,int) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 struct sp805_wdt* watchdog_get_drvdata (struct watchdog_device*) ;

__attribute__((used)) static int wdt_setload(struct watchdog_device *wdd, unsigned int timeout)
{
 struct sp805_wdt *wdt = watchdog_get_drvdata(wdd);
 u64 load, rate;

 rate = wdt->rate;







 load = div_u64(rate, 2) * timeout - 1;

 load = (load > LOAD_MAX) ? LOAD_MAX : load;
 load = (load < LOAD_MIN) ? LOAD_MIN : load;

 spin_lock(&wdt->lock);
 wdt->load_val = load;

 wdd->timeout = div_u64((load + 1) * 2 + (rate / 2), rate);
 spin_unlock(&wdt->lock);

 return 0;
}
