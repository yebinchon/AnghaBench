
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ovl_priv_data {int dummy; } ;
struct omap_overlay {size_t id; } ;
struct TYPE_2__ {struct ovl_priv_data* ovl_priv_data_array; } ;


 TYPE_1__ dss_data ;

__attribute__((used)) static struct ovl_priv_data *get_ovl_priv(struct omap_overlay *ovl)
{
 return &dss_data.ovl_priv_data_array[ovl->id];
}
