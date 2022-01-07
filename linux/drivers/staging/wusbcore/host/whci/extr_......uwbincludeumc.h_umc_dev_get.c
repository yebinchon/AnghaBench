
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct umc_dev {int dev; } ;


 int get_device (int *) ;

__attribute__((used)) static inline struct umc_dev *umc_dev_get(struct umc_dev *umc_dev)
{
 get_device(&umc_dev->dev);
 return umc_dev;
}
