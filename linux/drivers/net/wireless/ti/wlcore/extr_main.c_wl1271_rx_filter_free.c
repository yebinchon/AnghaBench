
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wl12xx_rx_filter {int num_fields; TYPE_1__* fields; } ;
struct TYPE_2__ {struct wl12xx_rx_filter* pattern; } ;


 int kfree (struct wl12xx_rx_filter*) ;

void wl1271_rx_filter_free(struct wl12xx_rx_filter *filter)
{
 int i;

 if (filter == ((void*)0))
  return;

 for (i = 0; i < filter->num_fields; i++)
  kfree(filter->fields[i].pattern);

 kfree(filter);
}
