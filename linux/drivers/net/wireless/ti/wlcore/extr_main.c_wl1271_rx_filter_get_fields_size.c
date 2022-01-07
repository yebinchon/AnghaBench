
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct wl12xx_rx_filter_field {int dummy; } ;
struct wl12xx_rx_filter {int num_fields; TYPE_1__* fields; } ;
struct TYPE_2__ {int len; } ;



int wl1271_rx_filter_get_fields_size(struct wl12xx_rx_filter *filter)
{
 int i, fields_size = 0;

 for (i = 0; i < filter->num_fields; i++)
  fields_size += filter->fields[i].len +
   sizeof(struct wl12xx_rx_filter_field) -
   sizeof(u8 *);

 return fields_size;
}
