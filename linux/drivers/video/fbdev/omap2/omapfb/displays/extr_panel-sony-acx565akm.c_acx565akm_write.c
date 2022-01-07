
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct panel_drv_data {int dummy; } ;


 int acx565akm_transfer (struct panel_drv_data*,int,int const*,int,int *,int ) ;

__attribute__((used)) static inline void acx565akm_write(struct panel_drv_data *ddata,
          int reg, const u8 *buf, int len)
{
 acx565akm_transfer(ddata, reg, buf, len, ((void*)0), 0);
}
