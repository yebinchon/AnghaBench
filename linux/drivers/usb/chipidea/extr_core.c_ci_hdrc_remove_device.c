
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int id; } ;


 int ci_ida ;
 int ida_simple_remove (int *,int) ;
 int platform_device_unregister (struct platform_device*) ;

void ci_hdrc_remove_device(struct platform_device *pdev)
{
 int id = pdev->id;
 platform_device_unregister(pdev);
 ida_simple_remove(&ci_ida, id);
}
