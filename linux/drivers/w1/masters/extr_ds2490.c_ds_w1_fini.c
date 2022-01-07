
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ds_device {int master; } ;


 int w1_remove_master_device (int *) ;

__attribute__((used)) static void ds_w1_fini(struct ds_device *dev)
{
 w1_remove_master_device(&dev->master);
}
