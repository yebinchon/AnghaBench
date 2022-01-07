
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct omap_overlay_manager {size_t id; } ;
struct mgr_priv_data {int dummy; } ;
struct TYPE_2__ {struct mgr_priv_data* mgr_priv_data_array; } ;


 TYPE_1__ dss_data ;

__attribute__((used)) static struct mgr_priv_data *get_mgr_priv(struct omap_overlay_manager *mgr)
{
 return &dss_data.mgr_priv_data_array[mgr->id];
}
