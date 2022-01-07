
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_3__ {int host_event; } ;
struct TYPE_4__ {scalar_t__ event_type; TYPE_1__ data; } ;
struct cros_ec_device {int event_size; TYPE_2__ event_data; int dev; int mkbp_event_supported; } ;
typedef int host_event ;


 int BUG_ON (int) ;
 scalar_t__ EC_MKBP_EVENT_HOST_EVENT ;
 int dev_warn (int ,char*) ;
 int get_unaligned_le32 (int *) ;

u32 cros_ec_get_host_event(struct cros_ec_device *ec_dev)
{
 u32 host_event;

 BUG_ON(!ec_dev->mkbp_event_supported);

 if (ec_dev->event_data.event_type != EC_MKBP_EVENT_HOST_EVENT)
  return 0;

 if (ec_dev->event_size != sizeof(host_event)) {
  dev_warn(ec_dev->dev, "Invalid host event size\n");
  return 0;
 }

 host_event = get_unaligned_le32(&ec_dev->event_data.data.host_event);

 return host_event;
}
