
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int in_bytes; int out_bytes; } ;
struct pxa_ep {TYPE_1__ stats; } ;



__attribute__((used)) static void inc_ep_stats_bytes(struct pxa_ep *ep, int count, int is_in)
{
 if (is_in)
  ep->stats.in_bytes += count;
 else
  ep->stats.out_bytes += count;
}
