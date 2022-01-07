
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uint16_t ;
struct rsp_que {scalar_t__ length; TYPE_1__* ring_ptr; int * status_srb; scalar_t__ ring_index; TYPE_1__* ring; } ;
struct TYPE_2__ {int signature; } ;
typedef TYPE_1__ response_t ;


 int RESPONSE_PROCESSED ;

void
qla2x00_init_response_q_entries(struct rsp_que *rsp)
{
 uint16_t cnt;
 response_t *pkt;

 rsp->ring_ptr = rsp->ring;
 rsp->ring_index = 0;
 rsp->status_srb = ((void*)0);
 pkt = rsp->ring_ptr;
 for (cnt = 0; cnt < rsp->length; cnt++) {
  pkt->signature = RESPONSE_PROCESSED;
  pkt++;
 }
}
