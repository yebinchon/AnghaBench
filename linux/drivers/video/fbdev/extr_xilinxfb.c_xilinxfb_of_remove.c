
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dev; } ;


 int xilinxfb_release (int *) ;

__attribute__((used)) static int xilinxfb_of_remove(struct platform_device *op)
{
 return xilinxfb_release(&op->dev);
}
