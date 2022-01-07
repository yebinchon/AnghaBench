
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct umc_dev {int dev; } ;


 void* dev_get_drvdata (int *) ;

__attribute__((used)) static inline void *umc_get_drvdata(struct umc_dev *umc_dev)
{
 return dev_get_drvdata(&umc_dev->dev);
}
