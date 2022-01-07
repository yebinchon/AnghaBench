
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ufs_dev_desc {int * model; } ;


 int kfree (int *) ;

__attribute__((used)) static void ufs_put_device_desc(struct ufs_dev_desc *dev_desc)
{
 kfree(dev_desc->model);
 dev_desc->model = ((void*)0);
}
