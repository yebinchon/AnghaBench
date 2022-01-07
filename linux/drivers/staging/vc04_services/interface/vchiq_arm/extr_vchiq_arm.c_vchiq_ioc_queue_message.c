
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vchiq_io_copy_callback_context {unsigned long elements_to_go; scalar_t__ element_offset; struct vchiq_element* element; } ;
struct vchiq_element {scalar_t__ size; int data; } ;
typedef int VCHIQ_STATUS_T ;
typedef int VCHIQ_SERVICE_HANDLE_T ;


 int EFAULT ;
 int vchiq_ioc_copy_element_data ;
 int vchiq_queue_message (int ,int ,struct vchiq_io_copy_callback_context*,size_t) ;

__attribute__((used)) static VCHIQ_STATUS_T
vchiq_ioc_queue_message(VCHIQ_SERVICE_HANDLE_T handle,
   struct vchiq_element *elements,
   unsigned long count)
{
 struct vchiq_io_copy_callback_context context;
 unsigned long i;
 size_t total_size = 0;

 context.element = elements;
 context.element_offset = 0;
 context.elements_to_go = count;

 for (i = 0; i < count; i++) {
  if (!elements[i].data && elements[i].size != 0)
   return -EFAULT;

  total_size += elements[i].size;
 }

 return vchiq_queue_message(handle, vchiq_ioc_copy_element_data,
       &context, total_size);
}
