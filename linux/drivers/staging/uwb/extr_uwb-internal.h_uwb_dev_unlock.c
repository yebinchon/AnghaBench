
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uwb_dev {int dev; } ;


 int device_unlock (int *) ;

__attribute__((used)) static inline void uwb_dev_unlock(struct uwb_dev *uwb_dev)
{
 device_unlock(&uwb_dev->dev);
}
