
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct omap_dss_device {int dummy; } ;
struct TYPE_2__ {int datapairs; } ;


 TYPE_1__ sdi ;

__attribute__((used)) static void sdi_set_datapairs(struct omap_dss_device *dssdev, int datapairs)
{
 sdi.datapairs = datapairs;
}
