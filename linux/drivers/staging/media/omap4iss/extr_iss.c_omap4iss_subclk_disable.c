
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iss_device {int subclk_resources; } ;
typedef enum iss_subclk_resource { ____Placeholder_iss_subclk_resource } iss_subclk_resource ;


 int __iss_subclk_update (struct iss_device*) ;

int omap4iss_subclk_disable(struct iss_device *iss,
       enum iss_subclk_resource res)
{
 iss->subclk_resources &= ~res;

 return __iss_subclk_update(iss);
}
