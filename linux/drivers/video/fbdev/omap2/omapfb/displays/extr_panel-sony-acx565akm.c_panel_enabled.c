
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct panel_drv_data {TYPE_1__* spi; } ;
struct TYPE_2__ {int dev; } ;


 int MIPID_CMD_READ_DISP_STATUS ;
 int __be32_to_cpu (int) ;
 int acx565akm_read (struct panel_drv_data*,int ,int *,int) ;
 int dev_dbg (int *,char*,char*,int) ;

__attribute__((used)) static int panel_enabled(struct panel_drv_data *ddata)
{
 u32 disp_status;
 int enabled;

 acx565akm_read(ddata, MIPID_CMD_READ_DISP_STATUS,
   (u8 *)&disp_status, 4);
 disp_status = __be32_to_cpu(disp_status);
 enabled = (disp_status & (1 << 17)) && (disp_status & (1 << 10));
 dev_dbg(&ddata->spi->dev,
  "LCD panel %senabled by bootloader (status 0x%04x)\n",
  enabled ? "" : "not ", disp_status);
 return enabled;
}
