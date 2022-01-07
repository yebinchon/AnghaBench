
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct musb {int ctrl_base; TYPE_1__* controller; } ;
struct dsps_musb_wrapper {int rxep_shift; int epintr_status; } ;
struct dsps_glue {struct dsps_musb_wrapper* wrp; } ;
struct TYPE_2__ {int parent; } ;


 struct dsps_glue* dev_get_drvdata (int ) ;
 int musb_writel (int ,int ,int) ;

__attribute__((used)) static void dsps_musb_clear_ep_rxintr(struct musb *musb, int epnum)
{
 u32 epintr;
 struct dsps_glue *glue = dev_get_drvdata(musb->controller->parent);
 const struct dsps_musb_wrapper *wrp = glue->wrp;


 epintr = (1 << epnum) << wrp->rxep_shift;
 musb_writel(musb->ctrl_base, wrp->epintr_status, epintr);
}
