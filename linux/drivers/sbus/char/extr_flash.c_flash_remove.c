
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;


 int flash_dev ;
 int misc_deregister (int *) ;

__attribute__((used)) static int flash_remove(struct platform_device *op)
{
 misc_deregister(&flash_dev);

 return 0;
}
