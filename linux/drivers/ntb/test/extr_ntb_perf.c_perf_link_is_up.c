
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct perf_peer {int pidx; TYPE_1__* perf; } ;
struct TYPE_2__ {int ntb; } ;


 int BIT_ULL_MASK (int ) ;
 int ntb_link_is_up (int ,int *,int *) ;

__attribute__((used)) static inline bool perf_link_is_up(struct perf_peer *peer)
{
 u64 link;

 link = ntb_link_is_up(peer->perf->ntb, ((void*)0), ((void*)0));
 return !!(link & BIT_ULL_MASK(peer->pidx));
}
