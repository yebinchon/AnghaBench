
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u8 ;
typedef int u32 ;
struct TYPE_2__ {scalar_t__ event_type; } ;
struct cros_ec_device {int host_event_wake_mask; TYPE_1__ event_data; int mkbp_event_supported; } ;


 scalar_t__ EC_MKBP_EVENT_SENSOR_FIFO ;
 int cros_ec_get_host_event (struct cros_ec_device*) ;
 int get_keyboard_state_event (struct cros_ec_device*) ;
 int get_next_event (struct cros_ec_device*) ;

int cros_ec_get_next_event(struct cros_ec_device *ec_dev, bool *wake_event)
{
 u8 event_type;
 u32 host_event;
 int ret;

 if (!ec_dev->mkbp_event_supported) {
  ret = get_keyboard_state_event(ec_dev);
  if (ret <= 0)
   return ret;

  if (wake_event)
   *wake_event = 1;

  return ret;
 }

 ret = get_next_event(ec_dev);
 if (ret <= 0)
  return ret;

 if (wake_event) {
  event_type = ec_dev->event_data.event_type;
  host_event = cros_ec_get_host_event(ec_dev);





  if (event_type == EC_MKBP_EVENT_SENSOR_FIFO)
   *wake_event = 0;

  else if (host_event &&
    !(host_event & ec_dev->host_event_wake_mask))
   *wake_event = 0;

  else
   *wake_event = 1;
 }

 return ret;
}
