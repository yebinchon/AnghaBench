
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct visornic_devdata {int incarnation_id; struct visor_device* dev; } ;
struct visor_device {int dummy; } ;


 int get_jiffies_64 () ;

__attribute__((used)) static struct visornic_devdata *devdata_initialize(
     struct visornic_devdata *devdata,
     struct visor_device *dev)
{
 devdata->dev = dev;
 devdata->incarnation_id = get_jiffies_64();
 return devdata;
}
