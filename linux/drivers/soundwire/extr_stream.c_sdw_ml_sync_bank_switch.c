
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_3__* msg; int complete; } ;
struct TYPE_4__ {int curr_bank; int next_bank; } ;
struct sdw_bus {TYPE_2__ defer_msg; TYPE_1__ params; int dev; int bank_switch_timeout; int multi_link; } ;
struct TYPE_6__ {struct TYPE_6__* buf; } ;


 int ETIMEDOUT ;
 int dev_err (int ,char*) ;
 int kfree (TYPE_3__*) ;
 unsigned long wait_for_completion_timeout (int *,int ) ;

__attribute__((used)) static int sdw_ml_sync_bank_switch(struct sdw_bus *bus)
{
 unsigned long time_left;

 if (!bus->multi_link)
  return 0;


 time_left = wait_for_completion_timeout(&bus->defer_msg.complete,
      bus->bank_switch_timeout);

 if (!time_left) {
  dev_err(bus->dev, "Controller Timed out on bank switch\n");
  return -ETIMEDOUT;
 }

 bus->params.curr_bank = !bus->params.curr_bank;
 bus->params.next_bank = !bus->params.next_bank;

 if (bus->defer_msg.msg) {
  kfree(bus->defer_msg.msg->buf);
  kfree(bus->defer_msg.msg);
 }

 return 0;
}
