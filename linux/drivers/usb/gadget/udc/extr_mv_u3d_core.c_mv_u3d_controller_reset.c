
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct mv_u3d {int ep_context_dma; TYPE_1__* op_regs; int dev; } ;
struct TYPE_2__ {int dcbaaph; int dcbaapl; int usbcmd; } ;


 int ETIMEDOUT ;
 unsigned int LOOPS (int ) ;
 int LOOPS_USEC ;
 int MV_U3D_CMD_CTRL_RESET ;
 int MV_U3D_CMD_RUN_STOP ;
 int MV_U3D_RESET_TIMEOUT ;
 int dev_err (int ,char*) ;
 int ioread32 (int *) ;
 int iowrite32 (int,int *) ;
 int udelay (int ) ;

__attribute__((used)) static int mv_u3d_controller_reset(struct mv_u3d *u3d)
{
 unsigned int loops;
 u32 tmp;


 tmp = ioread32(&u3d->op_regs->usbcmd);
 tmp &= ~MV_U3D_CMD_RUN_STOP;
 iowrite32(tmp, &u3d->op_regs->usbcmd);


 iowrite32(MV_U3D_CMD_CTRL_RESET, &u3d->op_regs->usbcmd);


 loops = LOOPS(MV_U3D_RESET_TIMEOUT);
 while (ioread32(&u3d->op_regs->usbcmd) & MV_U3D_CMD_CTRL_RESET) {
  if (loops == 0) {
   dev_err(u3d->dev,
    "Wait for RESET completed TIMEOUT\n");
   return -ETIMEDOUT;
  }
  loops--;
  udelay(LOOPS_USEC);
 }


 iowrite32(u3d->ep_context_dma, &u3d->op_regs->dcbaapl);
 iowrite32(0, &u3d->op_regs->dcbaaph);

 return 0;
}
