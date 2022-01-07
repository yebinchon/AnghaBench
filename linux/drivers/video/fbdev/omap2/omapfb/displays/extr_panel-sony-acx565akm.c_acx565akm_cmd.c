
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct panel_drv_data {int dummy; } ;


 int acx565akm_transfer (struct panel_drv_data*,int,int *,int ,int *,int ) ;

__attribute__((used)) static inline void acx565akm_cmd(struct panel_drv_data *ddata, int cmd)
{
 acx565akm_transfer(ddata, cmd, ((void*)0), 0, ((void*)0), 0);
}
