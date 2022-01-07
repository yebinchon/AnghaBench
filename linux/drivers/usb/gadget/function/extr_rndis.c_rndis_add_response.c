
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
typedef scalar_t__ u32 ;
struct rndis_params {int resp_queue; } ;
struct TYPE_4__ {int list; scalar_t__ send; scalar_t__ length; int * buf; } ;
typedef TYPE_1__ rndis_resp_t ;


 int GFP_ATOMIC ;
 TYPE_1__* kmalloc (scalar_t__,int ) ;
 int list_add_tail (int *,int *) ;

__attribute__((used)) static rndis_resp_t *rndis_add_response(struct rndis_params *params, u32 length)
{
 rndis_resp_t *r;


 r = kmalloc(sizeof(rndis_resp_t) + length, GFP_ATOMIC);
 if (!r) return ((void*)0);

 r->buf = (u8 *)(r + 1);
 r->length = length;
 r->send = 0;

 list_add_tail(&r->list, &params->resp_queue);
 return r;
}
