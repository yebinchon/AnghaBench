
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct port100_frame {int dummy; } ;
struct port100 {TYPE_1__* cmd; } ;
struct TYPE_2__ {int code; } ;


 scalar_t__ PORT100_CMD_RESPONSE (int ) ;
 scalar_t__ PORT100_FRAME_CMD (struct port100_frame*) ;

__attribute__((used)) static bool port100_rx_frame_is_cmd_response(struct port100 *dev, void *frame)
{
 struct port100_frame *f = frame;

 return (PORT100_FRAME_CMD(f) == PORT100_CMD_RESPONSE(dev->cmd->code));
}
