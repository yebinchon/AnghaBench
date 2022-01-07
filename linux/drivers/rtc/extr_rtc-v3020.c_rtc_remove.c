
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct v3020 {TYPE_1__* ops; } ;
struct platform_device {int dummy; } ;
struct TYPE_2__ {int (* unmap_io ) (struct v3020*) ;} ;


 struct v3020* platform_get_drvdata (struct platform_device*) ;
 int stub1 (struct v3020*) ;

__attribute__((used)) static int rtc_remove(struct platform_device *dev)
{
 struct v3020 *chip = platform_get_drvdata(dev);

 chip->ops->unmap_io(chip);

 return 0;
}
