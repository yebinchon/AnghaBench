
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wl12xx_rx_filter {int dummy; } ;


 int GFP_KERNEL ;
 struct wl12xx_rx_filter* kzalloc (int,int ) ;

struct wl12xx_rx_filter *wl1271_rx_filter_alloc(void)
{
 return kzalloc(sizeof(struct wl12xx_rx_filter), GFP_KERNEL);
}
