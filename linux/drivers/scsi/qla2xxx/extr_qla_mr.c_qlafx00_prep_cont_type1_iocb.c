
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct req_que {scalar_t__ ring_index; scalar_t__ length; scalar_t__ ring_ptr; scalar_t__ ring; } ;
struct TYPE_4__ {int entry_type; } ;
typedef TYPE_1__ cont_a64_entry_t ;


 int CONTINUE_A64_TYPE_FX00 ;

__attribute__((used)) static inline cont_a64_entry_t *
qlafx00_prep_cont_type1_iocb(struct req_que *req,
        cont_a64_entry_t *lcont_pkt)
{
 cont_a64_entry_t *cont_pkt;


 req->ring_index++;
 if (req->ring_index == req->length) {
  req->ring_index = 0;
  req->ring_ptr = req->ring;
 } else {
  req->ring_ptr++;
 }

 cont_pkt = (cont_a64_entry_t *)req->ring_ptr;


 lcont_pkt->entry_type = CONTINUE_A64_TYPE_FX00;

 return cont_pkt;
}
