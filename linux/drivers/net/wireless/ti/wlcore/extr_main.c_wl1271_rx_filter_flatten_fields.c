
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct wl12xx_rx_filter_field {scalar_t__ len; int pattern; int flags; int offset; } ;
struct wl12xx_rx_filter {int num_fields; TYPE_1__* fields; } ;
struct TYPE_2__ {int pattern; scalar_t__ len; int flags; int offset; } ;


 int memcpy (int *,int ,scalar_t__) ;

void wl1271_rx_filter_flatten_fields(struct wl12xx_rx_filter *filter,
        u8 *buf)
{
 int i;
 struct wl12xx_rx_filter_field *field;

 for (i = 0; i < filter->num_fields; i++) {
  field = (struct wl12xx_rx_filter_field *)buf;

  field->offset = filter->fields[i].offset;
  field->flags = filter->fields[i].flags;
  field->len = filter->fields[i].len;

  memcpy(&field->pattern, filter->fields[i].pattern, field->len);
  buf += sizeof(struct wl12xx_rx_filter_field) -
   sizeof(u8 *) + field->len;
 }
}
