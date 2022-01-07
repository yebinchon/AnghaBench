
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct imgu_device {int dummy; } ;
struct TYPE_2__ {unsigned int css_queue; } ;


 unsigned int IMGU_NODE_NUM ;
 TYPE_1__* imgu_node_map ;

unsigned int imgu_map_node(struct imgu_device *imgu, unsigned int css_queue)
{
 unsigned int i;

 for (i = 0; i < IMGU_NODE_NUM; i++)
  if (imgu_node_map[i].css_queue == css_queue)
   break;

 return i;
}
