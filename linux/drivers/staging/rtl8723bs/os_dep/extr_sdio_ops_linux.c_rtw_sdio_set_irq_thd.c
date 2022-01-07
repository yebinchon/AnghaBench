
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sdio_data {void* sys_sdio_irq_thd; } ;
struct dvobj_priv {struct sdio_data intf_data; } ;



inline void rtw_sdio_set_irq_thd(struct dvobj_priv *dvobj, void *thd_hdl)
{
 struct sdio_data *sdio_data = &dvobj->intf_data;

 sdio_data->sys_sdio_irq_thd = thd_hdl;
}
