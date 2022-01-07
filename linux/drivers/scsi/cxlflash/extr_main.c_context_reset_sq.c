
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hwq {TYPE_1__* host_map; } ;
struct TYPE_2__ {int sq_ctx_reset; } ;


 int context_reset (struct hwq*,int *) ;

__attribute__((used)) static int context_reset_sq(struct hwq *hwq)
{
 return context_reset(hwq, &hwq->host_map->sq_ctx_reset);
}
