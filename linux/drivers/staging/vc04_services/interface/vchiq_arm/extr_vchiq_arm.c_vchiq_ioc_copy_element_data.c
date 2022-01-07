
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vchiq_io_copy_callback_context {scalar_t__ element_offset; TYPE_1__* element; int elements_to_go; } ;
typedef size_t ssize_t ;
struct TYPE_2__ {scalar_t__ size; scalar_t__ data; } ;


 size_t EFAULT ;
 scalar_t__ copy_from_user (void*,scalar_t__,size_t) ;
 size_t min (scalar_t__,size_t) ;

__attribute__((used)) static ssize_t vchiq_ioc_copy_element_data(void *context, void *dest,
        size_t offset, size_t maxsize)
{
 struct vchiq_io_copy_callback_context *cc = context;
 size_t total_bytes_copied = 0;
 size_t bytes_this_round;

 while (total_bytes_copied < maxsize) {
  if (!cc->elements_to_go)
   return total_bytes_copied;

  if (!cc->element->size) {
   cc->elements_to_go--;
   cc->element++;
   cc->element_offset = 0;
   continue;
  }

  bytes_this_round = min(cc->element->size - cc->element_offset,
           maxsize - total_bytes_copied);

  if (copy_from_user(dest + total_bytes_copied,
      cc->element->data + cc->element_offset,
      bytes_this_round))
   return -EFAULT;

  cc->element_offset += bytes_this_round;
  total_bytes_copied += bytes_this_round;

  if (cc->element_offset == cc->element->size) {
   cc->elements_to_go--;
   cc->element++;
   cc->element_offset = 0;
  }
 }

 return maxsize;
}
