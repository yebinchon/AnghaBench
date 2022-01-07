
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;
struct i2c_device {int adapter; } ;


 int i2c_del_adapter (int *) ;
 scalar_t__ platform_get_drvdata (struct platform_device*) ;

__attribute__((used)) static int pi2c_remove(struct platform_device *pldev)
{
 struct i2c_device *lddev;

 lddev = (struct i2c_device *)platform_get_drvdata(pldev);

 i2c_del_adapter(&lddev->adapter);
 return 0;
}
