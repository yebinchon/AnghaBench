
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usbhs_priv {int dummy; } ;
struct usbhs_mod {scalar_t__ irq_brdysts; scalar_t__ irq_bempsts; int * irq_ready; int * irq_empty; } ;


 struct usbhs_mod* usbhs_mod_get_current (struct usbhs_priv*) ;

void usbhs_fifo_quit(struct usbhs_priv *priv)
{
 struct usbhs_mod *mod = usbhs_mod_get_current(priv);

 mod->irq_empty = ((void*)0);
 mod->irq_ready = ((void*)0);
 mod->irq_bempsts = 0;
 mod->irq_brdysts = 0;
}
