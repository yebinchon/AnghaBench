
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct panel_drv_data {int dummy; } ;


 int MIPID_CMD_READ_CABC ;
 int acx565akm_read (struct panel_drv_data*,int ,int*,int) ;

__attribute__((used)) static unsigned get_hw_cabc_mode(struct panel_drv_data *ddata)
{
 u8 cabc_ctrl;

 acx565akm_read(ddata, MIPID_CMD_READ_CABC, &cabc_ctrl, 1);
 return cabc_ctrl & 3;
}
