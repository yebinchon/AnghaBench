
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tb_path {int egress_fc_enable; int priority; int weight; int path_length; TYPE_1__* hops; void* ingress_shared_buffer; int ingress_fc_enable; void* egress_shared_buffer; } ;
struct TYPE_2__ {int initial_credits; } ;


 int TB_PATH_ALL ;
 int TB_PATH_INTERNAL ;
 void* TB_PATH_NONE ;
 int TB_PATH_SOURCE ;

__attribute__((used)) static void tb_dp_init_aux_path(struct tb_path *path)
{
 int i;

 path->egress_fc_enable = TB_PATH_SOURCE | TB_PATH_INTERNAL;
 path->egress_shared_buffer = TB_PATH_NONE;
 path->ingress_fc_enable = TB_PATH_ALL;
 path->ingress_shared_buffer = TB_PATH_NONE;
 path->priority = 2;
 path->weight = 1;

 for (i = 0; i < path->path_length; i++)
  path->hops[i].initial_credits = 1;
}
