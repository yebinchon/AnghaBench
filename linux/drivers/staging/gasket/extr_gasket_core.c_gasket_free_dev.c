
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gasket_internal_desc {int mutex; int ** devs; } ;
struct gasket_dev {size_t dev_idx; int dev; struct gasket_internal_desc* internal_desc; } ;


 int kfree (struct gasket_dev*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int put_device (int ) ;

__attribute__((used)) static void gasket_free_dev(struct gasket_dev *gasket_dev)
{
 struct gasket_internal_desc *internal_desc = gasket_dev->internal_desc;

 mutex_lock(&internal_desc->mutex);
 internal_desc->devs[gasket_dev->dev_idx] = ((void*)0);
 mutex_unlock(&internal_desc->mutex);
 put_device(gasket_dev->dev);
 kfree(gasket_dev);
}
