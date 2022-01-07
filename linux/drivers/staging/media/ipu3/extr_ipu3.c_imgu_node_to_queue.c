
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned int css_queue; } ;


 TYPE_1__* imgu_node_map ;

unsigned int imgu_node_to_queue(unsigned int node)
{
 return imgu_node_map[node].css_queue;
}
