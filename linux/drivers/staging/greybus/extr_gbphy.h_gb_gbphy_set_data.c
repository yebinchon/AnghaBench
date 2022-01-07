
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gbphy_device {int dev; } ;


 int dev_set_drvdata (int *,void*) ;

__attribute__((used)) static inline void gb_gbphy_set_data(struct gbphy_device *gdev, void *data)
{
 dev_set_drvdata(&gdev->dev, data);
}
