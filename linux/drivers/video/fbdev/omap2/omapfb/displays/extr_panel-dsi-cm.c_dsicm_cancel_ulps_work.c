
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct panel_drv_data {int ulps_work; } ;


 int cancel_delayed_work (int *) ;

__attribute__((used)) static void dsicm_cancel_ulps_work(struct panel_drv_data *ddata)
{
 cancel_delayed_work(&ddata->ulps_work);
}
