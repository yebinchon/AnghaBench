
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct omap_dss_device {int list; } ;


 int list_del (int *) ;

void omapdss_unregister_output(struct omap_dss_device *out)
{
 list_del(&out->list);
}
