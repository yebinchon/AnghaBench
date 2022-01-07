
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct visor_device {int * pending_msg_hdr; } ;


 int controlvm_responder (int,int *,int) ;
 int kfree (int *) ;

void visorbus_response(struct visor_device *bus_info, int response,
         int controlvm_id)
{
 if (!bus_info->pending_msg_hdr)
  return;

 controlvm_responder(controlvm_id, bus_info->pending_msg_hdr, response);
 kfree(bus_info->pending_msg_hdr);
 bus_info->pending_msg_hdr = ((void*)0);
}
