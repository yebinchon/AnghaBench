
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dev; } ;
struct chardev_data {int misc; } ;


 struct chardev_data* dev_get_drvdata (int *) ;
 int misc_deregister (int *) ;

__attribute__((used)) static int cros_ec_chardev_remove(struct platform_device *pdev)
{
 struct chardev_data *data = dev_get_drvdata(&pdev->dev);

 misc_deregister(&data->misc);

 return 0;
}
