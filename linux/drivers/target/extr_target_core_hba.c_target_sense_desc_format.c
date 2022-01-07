
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct se_device {TYPE_1__* transport; } ;
struct TYPE_2__ {scalar_t__ (* get_blocks ) (struct se_device*) ;} ;


 scalar_t__ U32_MAX ;
 scalar_t__ stub1 (struct se_device*) ;

bool target_sense_desc_format(struct se_device *dev)
{
 return (dev) ? dev->transport->get_blocks(dev) > U32_MAX : 0;
}
