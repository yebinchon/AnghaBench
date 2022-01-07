
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;
struct ds1wm_data {int dummy; } ;


 int ds1wm_down (struct ds1wm_data*) ;
 int ds1wm_master ;
 struct ds1wm_data* platform_get_drvdata (struct platform_device*) ;
 int w1_remove_master_device (int *) ;

__attribute__((used)) static int ds1wm_remove(struct platform_device *pdev)
{
 struct ds1wm_data *ds1wm_data = platform_get_drvdata(pdev);

 w1_remove_master_device(&ds1wm_master);
 ds1wm_down(ds1wm_data);

 return 0;
}
