
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct siox_master {int dummy; } ;
struct device {int dummy; } ;


 int kfree (struct siox_master*) ;
 struct siox_master* to_siox_master (struct device*) ;

__attribute__((used)) static void siox_master_release(struct device *dev)
{
 struct siox_master *smaster = to_siox_master(dev);

 kfree(smaster);
}
