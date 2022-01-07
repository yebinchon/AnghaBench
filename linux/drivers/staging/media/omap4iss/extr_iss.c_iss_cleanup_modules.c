
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iss_device {int dummy; } ;


 int omap4iss_csi2_cleanup (struct iss_device*) ;
 int omap4iss_ipipe_cleanup (struct iss_device*) ;
 int omap4iss_ipipeif_cleanup (struct iss_device*) ;
 int omap4iss_resizer_cleanup (struct iss_device*) ;

__attribute__((used)) static void iss_cleanup_modules(struct iss_device *iss)
{
 omap4iss_csi2_cleanup(iss);
 omap4iss_ipipeif_cleanup(iss);
 omap4iss_ipipe_cleanup(iss);
 omap4iss_resizer_cleanup(iss);
}
