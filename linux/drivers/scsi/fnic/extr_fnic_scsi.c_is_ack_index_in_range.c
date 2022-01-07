
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u16 ;
struct vnic_wq_copy {scalar_t__ to_clean_index; scalar_t__ to_use_index; } ;



__attribute__((used)) static inline int is_ack_index_in_range(struct vnic_wq_copy *wq,
     u16 request_out)
{
 if (wq->to_clean_index <= wq->to_use_index) {

  if (request_out < wq->to_clean_index ||
      request_out >= wq->to_use_index)
   return 0;
 } else {

  if (request_out < wq->to_clean_index &&
      request_out >= wq->to_use_index)
   return 0;
 }

 return 1;
}
