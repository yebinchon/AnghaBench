
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtllib_device {int start_ibss_wq; } ;


 int msecs_to_jiffies (int) ;
 int schedule_delayed_work (int *,int ) ;

inline void rtllib_start_ibss(struct rtllib_device *ieee)
{
 schedule_delayed_work(&ieee->start_ibss_wq, msecs_to_jiffies(150));
}
