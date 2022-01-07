
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cedrus_dev {int dummy; } ;


 int VE_MODE ;
 int VE_MODE_DISABLED ;
 int cedrus_write (struct cedrus_dev*,int ,int ) ;

void cedrus_engine_disable(struct cedrus_dev *dev)
{
 cedrus_write(dev, VE_MODE, VE_MODE_DISABLED);
}
