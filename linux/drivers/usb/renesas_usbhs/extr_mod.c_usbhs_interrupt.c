
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usbhs_priv {int dummy; } ;
struct usbhs_irq_state {int intsts0; int intsts1; int brdysts; int nrdysts; int bempsts; } ;
typedef int irqreturn_t ;


 int ATTCH ;
 int BEMP ;
 int BEMPSTS ;
 int BRDY ;
 int BRDYSTS ;
 int CTRT ;
 int DTCH ;
 int DVST ;
 int INTSTS0 ;
 int INTSTS0_MAGIC ;
 int INTSTS1 ;
 int INTSTS1_MAGIC ;
 int IRQ_HANDLED ;
 int IRQ_NONE ;
 int NRDYSTS ;
 int SACK ;
 int SIGN ;
 int VBINT ;
 int irq_attch ;
 int irq_ctrl_stage ;
 int irq_dev_state ;
 int irq_dtch ;
 int irq_empty ;
 int irq_ready ;
 int irq_sack ;
 int irq_sign ;
 int irq_vbus ;
 int usbhs_mod_call (struct usbhs_priv*,int ,struct usbhs_priv*,struct usbhs_irq_state*) ;
 int usbhs_mod_info_call (struct usbhs_priv*,int ,struct usbhs_priv*,struct usbhs_irq_state*) ;
 scalar_t__ usbhs_mod_is_host (struct usbhs_priv*) ;
 scalar_t__ usbhs_status_get_each_irq (struct usbhs_priv*,struct usbhs_irq_state*) ;
 int usbhs_write (struct usbhs_priv*,int ,int) ;

__attribute__((used)) static irqreturn_t usbhs_interrupt(int irq, void *data)
{
 struct usbhs_priv *priv = data;
 struct usbhs_irq_state irq_state;

 if (usbhs_status_get_each_irq(priv, &irq_state) < 0)
  return IRQ_NONE;
 usbhs_write(priv, INTSTS0, ~irq_state.intsts0 & INTSTS0_MAGIC);
 if (usbhs_mod_is_host(priv))
  usbhs_write(priv, INTSTS1, ~irq_state.intsts1 & INTSTS1_MAGIC);






 if (irq_state.intsts0 & BRDY)
  usbhs_write(priv, BRDYSTS, ~irq_state.brdysts);
 usbhs_write(priv, NRDYSTS, ~irq_state.nrdysts);
 if (irq_state.intsts0 & BEMP)
  usbhs_write(priv, BEMPSTS, ~irq_state.bempsts);
 if (irq_state.intsts0 & VBINT)
  usbhs_mod_info_call(priv, irq_vbus, priv, &irq_state);

 if (irq_state.intsts0 & DVST)
  usbhs_mod_call(priv, irq_dev_state, priv, &irq_state);

 if (irq_state.intsts0 & CTRT)
  usbhs_mod_call(priv, irq_ctrl_stage, priv, &irq_state);

 if (irq_state.intsts0 & BEMP)
  usbhs_mod_call(priv, irq_empty, priv, &irq_state);

 if (irq_state.intsts0 & BRDY)
  usbhs_mod_call(priv, irq_ready, priv, &irq_state);

 if (usbhs_mod_is_host(priv)) {

  if (irq_state.intsts1 & ATTCH)
   usbhs_mod_call(priv, irq_attch, priv, &irq_state);

  if (irq_state.intsts1 & DTCH)
   usbhs_mod_call(priv, irq_dtch, priv, &irq_state);

  if (irq_state.intsts1 & SIGN)
   usbhs_mod_call(priv, irq_sign, priv, &irq_state);

  if (irq_state.intsts1 & SACK)
   usbhs_mod_call(priv, irq_sack, priv, &irq_state);
 }
 return IRQ_HANDLED;
}
