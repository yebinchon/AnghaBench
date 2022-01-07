
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gbphy_device {int dev; } ;


 void* dev_get_drvdata (int *) ;

__attribute__((used)) static inline void *gb_gbphy_get_data(struct gbphy_device *gdev)
{
 return dev_get_drvdata(&gdev->dev);
}
