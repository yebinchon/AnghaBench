
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u16 ;
struct TYPE_4__ {TYPE_1__* feat; } ;
struct TYPE_3__ {scalar_t__ mgr_width_max; scalar_t__ mgr_height_max; } ;


 TYPE_2__ dispc ;

__attribute__((used)) static bool _dispc_mgr_size_ok(u16 width, u16 height)
{
 return width <= dispc.feat->mgr_width_max &&
  height <= dispc.feat->mgr_height_max;
}
