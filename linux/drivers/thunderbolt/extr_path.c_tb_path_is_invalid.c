
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct tb_path {int path_length; TYPE_5__* hops; } ;
struct TYPE_10__ {TYPE_4__* out_port; TYPE_2__* in_port; } ;
struct TYPE_9__ {TYPE_3__* sw; } ;
struct TYPE_8__ {scalar_t__ is_unplugged; } ;
struct TYPE_7__ {TYPE_1__* sw; } ;
struct TYPE_6__ {scalar_t__ is_unplugged; } ;



bool tb_path_is_invalid(struct tb_path *path)
{
 int i = 0;
 for (i = 0; i < path->path_length; i++) {
  if (path->hops[i].in_port->sw->is_unplugged)
   return 1;
  if (path->hops[i].out_port->sw->is_unplugged)
   return 1;
 }
 return 0;
}
