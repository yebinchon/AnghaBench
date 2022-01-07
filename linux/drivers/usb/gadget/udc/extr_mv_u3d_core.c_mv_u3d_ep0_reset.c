
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct mv_u3d_ep {int * ep_context; struct mv_u3d* u3d; } ;
struct mv_u3d {TYPE_2__* vuc_regs; int * ep_context; struct mv_u3d_ep* eps; } ;
struct TYPE_4__ {TYPE_1__* epcr; } ;
struct TYPE_3__ {int epxincr1; int epxincr0; int epxoutcr1; int epxoutcr0; } ;


 int MV_U3D_EP0_MAX_PKT_SIZE ;
 int MV_U3D_EPXCR_EP_ENABLE_SHIFT ;
 int MV_U3D_EPXCR_EP_INIT ;
 int MV_U3D_EPXCR_EP_TYPE_CONTROL ;
 int MV_U3D_EPXCR_MAX_BURST_SIZE_SHIFT ;
 int MV_U3D_EPXCR_MAX_PACKET_SIZE_SHIFT ;
 int ioread32 (int *) ;
 int iowrite32 (int,int *) ;
 int udelay (int) ;

__attribute__((used)) static void mv_u3d_ep0_reset(struct mv_u3d *u3d)
{
 struct mv_u3d_ep *ep;
 u32 epxcr;
 int i;

 for (i = 0; i < 2; i++) {
  ep = &u3d->eps[i];
  ep->u3d = u3d;


  ep->ep_context = &u3d->ep_context[1];
 }



 epxcr = ioread32(&u3d->vuc_regs->epcr[0].epxoutcr0);
 epxcr |= MV_U3D_EPXCR_EP_INIT;
 iowrite32(epxcr, &u3d->vuc_regs->epcr[0].epxoutcr0);
 udelay(5);
 epxcr &= ~MV_U3D_EPXCR_EP_INIT;
 iowrite32(epxcr, &u3d->vuc_regs->epcr[0].epxoutcr0);

 epxcr = ((MV_U3D_EP0_MAX_PKT_SIZE
  << MV_U3D_EPXCR_MAX_PACKET_SIZE_SHIFT)
  | (1 << MV_U3D_EPXCR_MAX_BURST_SIZE_SHIFT)
  | (1 << MV_U3D_EPXCR_EP_ENABLE_SHIFT)
  | MV_U3D_EPXCR_EP_TYPE_CONTROL);
 iowrite32(epxcr, &u3d->vuc_regs->epcr[0].epxoutcr1);


 epxcr = ioread32(&u3d->vuc_regs->epcr[0].epxincr0);
 epxcr |= MV_U3D_EPXCR_EP_INIT;
 iowrite32(epxcr, &u3d->vuc_regs->epcr[0].epxincr0);
 udelay(5);
 epxcr &= ~MV_U3D_EPXCR_EP_INIT;
 iowrite32(epxcr, &u3d->vuc_regs->epcr[0].epxincr0);

 epxcr = ((MV_U3D_EP0_MAX_PKT_SIZE
  << MV_U3D_EPXCR_MAX_PACKET_SIZE_SHIFT)
  | (1 << MV_U3D_EPXCR_MAX_BURST_SIZE_SHIFT)
  | (1 << MV_U3D_EPXCR_EP_ENABLE_SHIFT)
  | MV_U3D_EPXCR_EP_TYPE_CONTROL);
 iowrite32(epxcr, &u3d->vuc_regs->epcr[0].epxincr1);
}
