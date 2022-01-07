
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sdio_func {int dummy; } ;
struct sdio_data {scalar_t__ sys_sdio_irq_thd; } ;
struct dvobj_priv {struct sdio_data intf_data; } ;


 scalar_t__ current ;
 struct dvobj_priv* sdio_get_drvdata (struct sdio_func*) ;

__attribute__((used)) static bool rtw_sdio_claim_host_needed(struct sdio_func *func)
{
 struct dvobj_priv *dvobj = sdio_get_drvdata(func);
 struct sdio_data *sdio_data = &dvobj->intf_data;

 if (sdio_data->sys_sdio_irq_thd && sdio_data->sys_sdio_irq_thd == current)
  return 0;
 return 1;
}
