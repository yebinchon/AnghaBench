
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
typedef enum omap_plane { ____Placeholder_omap_plane } omap_plane ;
struct TYPE_4__ {int* fifo_assignment; scalar_t__* fifo_size; TYPE_1__* feat; } ;
struct TYPE_3__ {int num_fifos; } ;


 TYPE_2__ dispc ;

__attribute__((used)) static u32 dispc_ovl_get_fifo_size(enum omap_plane plane)
{
 int fifo;
 u32 size = 0;

 for (fifo = 0; fifo < dispc.feat->num_fifos; ++fifo) {
  if (dispc.fifo_assignment[fifo] == plane)
   size += dispc.fifo_size[fifo];
 }

 return size;
}
