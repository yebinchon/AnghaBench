
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtw_coex_stat {int wl_cck_lock; int wl_cck_lock_pre; int wl_cck_lock_ever; } ;
struct rtw_coex {struct rtw_coex_stat stat; } ;
struct rtw_dev {struct rtw_coex coex; } ;



__attribute__((used)) static void rtw_coex_wl_ccklock_detect(struct rtw_dev *rtwdev)
{
 struct rtw_coex *coex = &rtwdev->coex;
 struct rtw_coex_stat *coex_stat = &coex->stat;


 coex_stat->wl_cck_lock = 0;
 coex_stat->wl_cck_lock_pre = 0;
 coex_stat->wl_cck_lock_ever = 0;
}
