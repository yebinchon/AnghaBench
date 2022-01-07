
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sdio_func {int dummy; } ;
struct rsi_hw {TYPE_1__* priv; scalar_t__ rsi_dev; } ;
struct rsi_91x_sdiodev {int * sdio_irq_task; } ;
struct TYPE_2__ {scalar_t__ fsm_state; } ;


 scalar_t__ FSM_FW_NOT_LOADED ;
 int * current ;
 int rsi_interrupt_handler (struct rsi_hw*) ;
 struct rsi_hw* sdio_get_drvdata (struct sdio_func*) ;

__attribute__((used)) static void rsi_handle_interrupt(struct sdio_func *function)
{
 struct rsi_hw *adapter = sdio_get_drvdata(function);
 struct rsi_91x_sdiodev *dev =
  (struct rsi_91x_sdiodev *)adapter->rsi_dev;

 if (adapter->priv->fsm_state == FSM_FW_NOT_LOADED)
  return;

 dev->sdio_irq_task = current;
 rsi_interrupt_handler(adapter);
 dev->sdio_irq_task = ((void*)0);
}
