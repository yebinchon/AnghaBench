
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct omap_dss_device {int list; } ;


 int list_add_tail (int *,int *) ;
 int output_list ;

int omapdss_register_output(struct omap_dss_device *out)
{
 list_add_tail(&out->list, &output_list);
 return 0;
}
