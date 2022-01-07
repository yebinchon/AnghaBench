
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct umc_dev {int dev; } ;


 int put_device (int *) ;

__attribute__((used)) static inline void umc_dev_put(struct umc_dev *umc_dev)
{
 put_device(&umc_dev->dev);
}
