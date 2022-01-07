
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct visor_segment_state {int dummy; } ;
struct visor_device {int * pending_msg_hdr; } ;


 int CONTROLVM_DEVICE_CHANGESTATE ;
 int device_changestate_responder (int ,struct visor_device*,int,struct visor_segment_state) ;
 int kfree (int *) ;

void visorbus_device_changestate_response(struct visor_device *dev_info,
       int response,
       struct visor_segment_state state)
{
 if (!dev_info->pending_msg_hdr)
  return;

 device_changestate_responder(CONTROLVM_DEVICE_CHANGESTATE, dev_info,
         response, state);
 kfree(dev_info->pending_msg_hdr);
 dev_info->pending_msg_hdr = ((void*)0);
}
