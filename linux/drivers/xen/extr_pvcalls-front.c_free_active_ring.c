
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ in; } ;
struct TYPE_6__ {TYPE_2__* ring; TYPE_1__ data; } ;
struct sock_mapping {TYPE_3__ active; } ;
struct TYPE_5__ {int ring_order; } ;


 int free_page (unsigned long) ;
 int free_pages (unsigned long,int ) ;

__attribute__((used)) static void free_active_ring(struct sock_mapping *map)
{
 if (!map->active.ring)
  return;

 free_pages((unsigned long)map->active.data.in,
   map->active.ring->ring_order);
 free_page((unsigned long)map->active.ring);
}
