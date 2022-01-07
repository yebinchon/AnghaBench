
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct controlvm_message_header {int dummy; } ;
struct TYPE_4__ {int features; } ;
struct TYPE_5__ {TYPE_1__ init_chipset; } ;
struct controlvm_message {TYPE_2__ cmd; } ;
typedef enum visor_chipset_feature { ____Placeholder_visor_chipset_feature } visor_chipset_feature ;
struct TYPE_6__ {int controlvm_channel; } ;


 int CONTROLVM_QUEUE_REQUEST ;
 TYPE_3__* chipset_dev ;
 int controlvm_init_response (struct controlvm_message*,struct controlvm_message_header*,int) ;
 int visorchannel_signalinsert (int ,int ,struct controlvm_message*) ;

__attribute__((used)) static int controlvm_respond_chipset_init(
    struct controlvm_message_header *msg_hdr,
    int response,
    enum visor_chipset_feature features)
{
 struct controlvm_message outmsg;

 controlvm_init_response(&outmsg, msg_hdr, response);
 outmsg.cmd.init_chipset.features = features;
 return visorchannel_signalinsert(chipset_dev->controlvm_channel,
      CONTROLVM_QUEUE_REQUEST, &outmsg);
}
