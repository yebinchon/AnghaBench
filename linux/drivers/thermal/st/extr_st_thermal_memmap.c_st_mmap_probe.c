
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;


 int st_mmap_thermal_of_match ;
 int st_thermal_register (struct platform_device*,int ) ;

__attribute__((used)) static int st_mmap_probe(struct platform_device *pdev)
{
 return st_thermal_register(pdev, st_mmap_thermal_of_match);
}
