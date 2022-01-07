
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dev; } ;


 int mpc512x_psc_spi_do_remove (int *) ;

__attribute__((used)) static int mpc512x_psc_spi_of_remove(struct platform_device *op)
{
 return mpc512x_psc_spi_do_remove(&op->dev);
}
