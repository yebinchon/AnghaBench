
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct controlvm_message_header {scalar_t__ id; } ;
typedef enum controlvm_id { ____Placeholder_controlvm_id } controlvm_id ;


 int EINVAL ;
 int controlvm_respond (struct controlvm_message_header*,int,int *) ;

__attribute__((used)) static int controlvm_responder(enum controlvm_id cmd_id,
          struct controlvm_message_header *pending_msg_hdr,
          int response)
{
 if (pending_msg_hdr->id != (u32)cmd_id)
  return -EINVAL;

 return controlvm_respond(pending_msg_hdr, response, ((void*)0));
}
