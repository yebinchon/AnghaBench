
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iss_device {int isp_subclk_resources; } ;
typedef enum iss_isp_subclk_resource { ____Placeholder_iss_isp_subclk_resource } iss_isp_subclk_resource ;


 int __iss_isp_subclk_update (struct iss_device*) ;

void omap4iss_isp_subclk_disable(struct iss_device *iss,
     enum iss_isp_subclk_resource res)
{
 iss->isp_subclk_resources &= ~res;

 __iss_isp_subclk_update(iss);
}
