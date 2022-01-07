
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ieee80211_rate_control_register (int *) ;
 int rtl_rate_ops ;

int rtl_rate_control_register(void)
{
 return ieee80211_rate_control_register(&rtl_rate_ops);
}
