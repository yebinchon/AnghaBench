
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct req_que {scalar_t__ ring_index; scalar_t__ length; scalar_t__ ring_ptr; scalar_t__ ring; } ;
typedef void cont_entry_t ;



__attribute__((used)) static inline void *qlt_get_req_pkt(struct req_que *req)
{

 req->ring_index++;
 if (req->ring_index == req->length) {
  req->ring_index = 0;
  req->ring_ptr = req->ring;
 } else {
  req->ring_ptr++;
 }
 return (cont_entry_t *)req->ring_ptr;
}
