
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct aac_dev {int dummy; } ;


 int aac_setup_safw_targets (struct aac_dev*) ;

int aac_setup_safw_adapter(struct aac_dev *dev)
{
 return aac_setup_safw_targets(dev);
}
