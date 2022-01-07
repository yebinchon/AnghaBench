
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ emulate_fua_write; } ;
struct se_device {TYPE_1__ dev_attrib; } ;


 scalar_t__ target_check_wce (struct se_device*) ;

bool
target_check_fua(struct se_device *dev)
{
 return target_check_wce(dev) && dev->dev_attrib.emulate_fua_write > 0;
}
