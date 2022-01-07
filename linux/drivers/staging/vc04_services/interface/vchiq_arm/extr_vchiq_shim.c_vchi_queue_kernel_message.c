
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int VCHI_SERVICE_HANDLE_T ;


 int vchi_msg_queue (int ,int ,void*,unsigned int) ;
 int vchi_queue_kernel_message_callback ;

int
vchi_queue_kernel_message(VCHI_SERVICE_HANDLE_T handle,
     void *data,
     unsigned int size)
{
 return vchi_msg_queue(handle,
         vchi_queue_kernel_message_callback,
         data,
         size);
}
