
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vchiq_header {int dummy; } ;
struct vchi_held_msg {scalar_t__ message; scalar_t__ service; } ;
typedef int int32_t ;
typedef int VCHIQ_SERVICE_HANDLE_T ;


 int vchiq_release_message (int ,struct vchiq_header*) ;

int32_t vchi_held_msg_release(struct vchi_held_msg *message)
{
 vchiq_release_message((VCHIQ_SERVICE_HANDLE_T)(long)message->service,
         (struct vchiq_header *)message->message);

 return 0;
}
