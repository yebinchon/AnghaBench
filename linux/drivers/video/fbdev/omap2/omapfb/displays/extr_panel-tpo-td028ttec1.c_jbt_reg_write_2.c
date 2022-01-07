
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u16 ;
struct panel_drv_data {TYPE_1__* spi_dev; } ;
struct TYPE_2__ {int dev; } ;


 int JBT_COMMAND ;
 int JBT_DATA ;
 int dev_err (int *,char*,int) ;
 int spi_write (TYPE_1__*,int*,int) ;

__attribute__((used)) static int jbt_reg_write_2(struct panel_drv_data *ddata, u8 reg, u16 data)
{
 int rc;
 u16 tx_buf[3];

 tx_buf[0] = JBT_COMMAND | reg;
 tx_buf[1] = JBT_DATA | (data >> 8);
 tx_buf[2] = JBT_DATA | (data & 0xff);

 rc = spi_write(ddata->spi_dev, (u8 *)tx_buf,
   3*sizeof(u16));

 if (rc != 0)
  dev_err(&ddata->spi_dev->dev,
   "jbt_reg_write_2 spi_write ret %d\n", rc);

 return rc;
}
