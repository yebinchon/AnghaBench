
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timer_list {int dummy; } ;
struct mips_ejtag_fdc_tty {int poll_timer; int removing; } ;


 scalar_t__ FDC_TTY_POLL ;
 struct mips_ejtag_fdc_tty* from_timer (int ,struct timer_list*,int ) ;
 scalar_t__ jiffies ;
 int mips_ejtag_fdc_handle (struct mips_ejtag_fdc_tty*) ;
 int mod_timer (int *,scalar_t__) ;
 int poll_timer ;
 struct mips_ejtag_fdc_tty* priv ;

__attribute__((used)) static void mips_ejtag_fdc_tty_timer(struct timer_list *t)
{
 struct mips_ejtag_fdc_tty *priv = from_timer(priv, t, poll_timer);

 mips_ejtag_fdc_handle(priv);
 if (!priv->removing)
  mod_timer(&priv->poll_timer, jiffies + FDC_TTY_POLL);
}
