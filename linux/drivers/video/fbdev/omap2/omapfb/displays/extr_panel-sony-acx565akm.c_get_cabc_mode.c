
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct panel_drv_data {int cabc_mode; } ;



__attribute__((used)) static unsigned get_cabc_mode(struct panel_drv_data *ddata)
{
 return ddata->cabc_mode;
}
