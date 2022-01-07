
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wdtbd70528 {int mfd; } ;


 int bd70528_wdt_lock (int ) ;
 int bd70528_wdt_set_locked (struct wdtbd70528*,int) ;
 int bd70528_wdt_unlock (int ) ;

__attribute__((used)) static int bd70528_wdt_change(struct wdtbd70528 *w, int enable)
{
 int ret;

 bd70528_wdt_lock(w->mfd);
 ret = bd70528_wdt_set_locked(w, enable);
 bd70528_wdt_unlock(w->mfd);

 return ret;
}
