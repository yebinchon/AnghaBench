
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;


 int dev_name (struct device*) ;
 int pr_info (char*,int ) ;

__attribute__((used)) static void release_channel(struct device *dev)
{
 pr_info("releasing channel dev %s...\n", dev_name(dev));
}
