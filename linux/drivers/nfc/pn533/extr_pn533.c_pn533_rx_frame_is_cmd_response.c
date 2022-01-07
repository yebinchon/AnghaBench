
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct pn533 {TYPE_2__* cmd; TYPE_1__* ops; } ;
struct TYPE_4__ {int code; } ;
struct TYPE_3__ {scalar_t__ (* get_cmd_code ) (void*) ;} ;


 scalar_t__ PN533_CMD_RESPONSE (int ) ;
 scalar_t__ stub1 (void*) ;

bool pn533_rx_frame_is_cmd_response(struct pn533 *dev, void *frame)
{
 return (dev->ops->get_cmd_code(frame) ==
    PN533_CMD_RESPONSE(dev->cmd->code));
}
