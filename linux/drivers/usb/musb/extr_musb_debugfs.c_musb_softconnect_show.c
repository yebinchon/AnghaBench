
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct seq_file {struct musb* private; } ;
struct musb {int controller; int mregs; TYPE_2__* xceiv; } ;
struct TYPE_4__ {TYPE_1__* otg; } ;
struct TYPE_3__ {int state; } ;


 int MUSB_DEVCTL ;
 int MUSB_DEVCTL_SESSION ;


 int musb_readb (int ,int ) ;
 int pm_runtime_get_sync (int ) ;
 int pm_runtime_mark_last_busy (int ) ;
 int pm_runtime_put_autosuspend (int ) ;
 int seq_printf (struct seq_file*,char*,int) ;

__attribute__((used)) static int musb_softconnect_show(struct seq_file *s, void *unused)
{
 struct musb *musb = s->private;
 u8 reg;
 int connect;

 switch (musb->xceiv->otg->state) {
 case 129:
 case 128:
  pm_runtime_get_sync(musb->controller);

  reg = musb_readb(musb->mregs, MUSB_DEVCTL);
  connect = reg & MUSB_DEVCTL_SESSION ? 1 : 0;

  pm_runtime_mark_last_busy(musb->controller);
  pm_runtime_put_autosuspend(musb->controller);
  break;
 default:
  connect = -1;
 }

 seq_printf(s, "%d\n", connect);

 return 0;
}
