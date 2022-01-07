
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wdtbd70528 {int mfd; } ;


 int bd70528_wdt_set (int ,int,int *) ;

__attribute__((used)) static int bd70528_wdt_set_locked(struct wdtbd70528 *w, int enable)
{
 return bd70528_wdt_set(w->mfd, enable, ((void*)0));
}
