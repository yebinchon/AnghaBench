
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;


 int nv_tco_cleanup () ;
 scalar_t__ tcobase ;

__attribute__((used)) static int nv_tco_remove(struct platform_device *dev)
{
 if (tcobase)
  nv_tco_cleanup();

 return 0;
}
