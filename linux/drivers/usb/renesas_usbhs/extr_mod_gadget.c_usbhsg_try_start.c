
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct usbhsg_uep {TYPE_1__* pipe; } ;
struct usbhsg_gpriv {int dummy; } ;
struct usbhs_priv {int dummy; } ;
struct usbhs_mod {int irq_ctrl_stage; int irq_dev_state; } ;
struct device {int dummy; } ;
struct TYPE_3__ {struct usbhsg_uep* mod_private; } ;


 int USBHSG_STATUS_REGISTERD ;
 int USBHSG_STATUS_STARTED ;
 int dev_dbg (struct device*,char*) ;
 TYPE_1__* usbhs_dcp_malloc (struct usbhs_priv*) ;
 int usbhs_fifo_init (struct usbhs_priv*) ;
 int usbhs_irq_callback_update (struct usbhs_priv*,struct usbhs_mod*) ;
 int usbhs_lock (struct usbhs_priv*,unsigned long) ;
 struct usbhs_mod* usbhs_mod_get_current (struct usbhs_priv*) ;
 int usbhs_pipe_config_update (TYPE_1__*,int ,int ,int) ;
 int usbhs_pipe_init (struct usbhs_priv*,int ) ;
 struct device* usbhs_priv_to_dev (struct usbhs_priv*) ;
 int usbhs_sys_function_ctrl (struct usbhs_priv*,int) ;
 int usbhs_unlock (struct usbhs_priv*,unsigned long) ;
 int usbhsg_dma_map_ctrl ;
 struct usbhsg_uep* usbhsg_gpriv_to_dcp (struct usbhsg_gpriv*) ;
 int usbhsg_irq_ctrl_stage ;
 int usbhsg_irq_dev_state ;
 struct usbhsg_gpriv* usbhsg_priv_to_gpriv (struct usbhs_priv*) ;
 scalar_t__ usbhsg_status_has (struct usbhsg_gpriv*,int ) ;
 int usbhsg_status_set (struct usbhsg_gpriv*,int ) ;
 int usbhsg_update_pullup (struct usbhs_priv*) ;

__attribute__((used)) static int usbhsg_try_start(struct usbhs_priv *priv, u32 status)
{
 struct usbhsg_gpriv *gpriv = usbhsg_priv_to_gpriv(priv);
 struct usbhsg_uep *dcp = usbhsg_gpriv_to_dcp(gpriv);
 struct usbhs_mod *mod = usbhs_mod_get_current(priv);
 struct device *dev = usbhs_priv_to_dev(priv);
 unsigned long flags;
 int ret = 0;


 usbhs_lock(priv, flags);

 usbhsg_status_set(gpriv, status);
 if (!(usbhsg_status_has(gpriv, USBHSG_STATUS_STARTED) &&
       usbhsg_status_has(gpriv, USBHSG_STATUS_REGISTERD)))
  ret = -1;

 usbhs_unlock(priv, flags);


 if (ret < 0)
  return 0;




 dev_dbg(dev, "start gadget\n");




 usbhs_fifo_init(priv);
 usbhs_pipe_init(priv,
   usbhsg_dma_map_ctrl);


 dcp->pipe = usbhs_dcp_malloc(priv);
 dcp->pipe->mod_private = dcp;
 usbhs_pipe_config_update(dcp->pipe, 0, 0, 64);







 usbhs_sys_function_ctrl(priv, 1);
 usbhsg_update_pullup(priv);




 mod->irq_dev_state = usbhsg_irq_dev_state;
 mod->irq_ctrl_stage = usbhsg_irq_ctrl_stage;
 usbhs_irq_callback_update(priv, mod);

 return 0;
}
