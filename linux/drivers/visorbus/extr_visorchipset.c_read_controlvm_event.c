
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int test_message; } ;
struct TYPE_5__ {TYPE_1__ flags; } ;
struct controlvm_message {TYPE_2__ hdr; } ;
struct TYPE_6__ {int controlvm_channel; } ;


 int CONTROLVM_QUEUE_EVENT ;
 int EINVAL ;
 TYPE_3__* chipset_dev ;
 int visorchannel_signalremove (int ,int ,struct controlvm_message*) ;

__attribute__((used)) static int read_controlvm_event(struct controlvm_message *msg)
{
 int err = visorchannel_signalremove(chipset_dev->controlvm_channel,
         CONTROLVM_QUEUE_EVENT, msg);

 if (err)
  return err;

 if (msg->hdr.flags.test_message == 1)
  return -EINVAL;
 return 0;
}
