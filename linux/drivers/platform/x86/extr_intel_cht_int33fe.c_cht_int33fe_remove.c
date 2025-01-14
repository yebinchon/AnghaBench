
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;
struct cht_int33fe_data {int max17047; int fusb302; int pi3usb30532; } ;


 int cht_int33fe_remove_nodes (struct cht_int33fe_data*) ;
 int i2c_unregister_device (int ) ;
 struct cht_int33fe_data* platform_get_drvdata (struct platform_device*) ;

__attribute__((used)) static int cht_int33fe_remove(struct platform_device *pdev)
{
 struct cht_int33fe_data *data = platform_get_drvdata(pdev);

 i2c_unregister_device(data->pi3usb30532);
 i2c_unregister_device(data->fusb302);
 i2c_unregister_device(data->max17047);

 cht_int33fe_remove_nodes(data);

 return 0;
}
