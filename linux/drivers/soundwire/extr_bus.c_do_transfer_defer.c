
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sdw_msg {int len; } ;
struct sdw_defer {int complete; int length; struct sdw_msg* msg; } ;
struct TYPE_4__ {int err_threshold; } ;
struct sdw_bus {TYPE_1__* ops; TYPE_2__ prop; } ;
typedef enum sdw_command_response { ____Placeholder_sdw_command_response } sdw_command_response ;
struct TYPE_3__ {int (* xfer_msg_defer ) (struct sdw_bus*,struct sdw_msg*,struct sdw_defer*) ;} ;


 int ENODATA ;
 int find_response_code (int) ;
 int init_completion (int *) ;
 int stub1 (struct sdw_bus*,struct sdw_msg*,struct sdw_defer*) ;

__attribute__((used)) static inline int do_transfer_defer(struct sdw_bus *bus,
        struct sdw_msg *msg,
        struct sdw_defer *defer)
{
 int retry = bus->prop.err_threshold;
 enum sdw_command_response resp;
 int ret = 0, i;

 defer->msg = msg;
 defer->length = msg->len;
 init_completion(&defer->complete);

 for (i = 0; i <= retry; i++) {
  resp = bus->ops->xfer_msg_defer(bus, msg, defer);
  ret = find_response_code(resp);

  if (ret == 0 || ret == -ENODATA)
   return ret;
 }

 return ret;
}
