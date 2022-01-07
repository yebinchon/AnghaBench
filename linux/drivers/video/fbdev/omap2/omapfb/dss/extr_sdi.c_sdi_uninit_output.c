
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct platform_device {int dummy; } ;
struct omap_dss_device {int dummy; } ;
struct TYPE_2__ {struct omap_dss_device output; } ;


 int omapdss_unregister_output (struct omap_dss_device*) ;
 TYPE_1__ sdi ;

__attribute__((used)) static void sdi_uninit_output(struct platform_device *pdev)
{
 struct omap_dss_device *out = &sdi.output;

 omapdss_unregister_output(out);
}
