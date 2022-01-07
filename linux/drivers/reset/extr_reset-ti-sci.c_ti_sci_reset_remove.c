
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ti_sci_reset_data {int idr; int rcdev; } ;
struct platform_device {int dummy; } ;


 int idr_destroy (int *) ;
 struct ti_sci_reset_data* platform_get_drvdata (struct platform_device*) ;
 int reset_controller_unregister (int *) ;

__attribute__((used)) static int ti_sci_reset_remove(struct platform_device *pdev)
{
 struct ti_sci_reset_data *data = platform_get_drvdata(pdev);

 reset_controller_unregister(&data->rcdev);

 idr_destroy(&data->idr);

 return 0;
}
