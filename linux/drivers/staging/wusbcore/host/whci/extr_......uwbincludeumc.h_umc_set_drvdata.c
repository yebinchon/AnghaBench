
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct umc_dev {int dev; } ;


 int dev_set_drvdata (int *,void*) ;

__attribute__((used)) static inline void umc_set_drvdata(struct umc_dev *umc_dev, void *data)
{
 dev_set_drvdata(&umc_dev->dev, data);
}
