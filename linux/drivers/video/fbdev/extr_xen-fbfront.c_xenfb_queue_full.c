
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct xenfb_info {TYPE_1__* page; } ;
struct TYPE_2__ {scalar_t__ out_prod; scalar_t__ out_cons; } ;


 scalar_t__ XENFB_OUT_RING_LEN ;

__attribute__((used)) static int xenfb_queue_full(struct xenfb_info *info)
{
 u32 cons, prod;

 prod = info->page->out_prod;
 cons = info->page->out_cons;
 return prod - cons == XENFB_OUT_RING_LEN;
}
