
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct mv_u3d {TYPE_2__* op_regs; int dev; TYPE_1__* vuc_regs; scalar_t__ vbus_valid_detect; int clock_gating; } ;
struct TYPE_4__ {int usbcmd; } ;
struct TYPE_3__ {int setuplock; int linkchange; int trbcomplete; int trbunderrun; int endcomplete; int intrenable; } ;


 int MV_U3D_CMD_RUN_STOP ;
 int MV_U3D_INTR_ENABLE_VBUS_VALID ;
 int dev_dbg (int ,char*,int) ;
 int ioread32 (int *) ;
 int iowrite32 (int,int *) ;

__attribute__((used)) static void mv_u3d_controller_stop(struct mv_u3d *u3d)
{
 u32 tmp;

 if (!u3d->clock_gating && u3d->vbus_valid_detect)
  iowrite32(MV_U3D_INTR_ENABLE_VBUS_VALID,
    &u3d->vuc_regs->intrenable);
 else
  iowrite32(0, &u3d->vuc_regs->intrenable);
 iowrite32(~0x0, &u3d->vuc_regs->endcomplete);
 iowrite32(~0x0, &u3d->vuc_regs->trbunderrun);
 iowrite32(~0x0, &u3d->vuc_regs->trbcomplete);
 iowrite32(~0x0, &u3d->vuc_regs->linkchange);
 iowrite32(0x1, &u3d->vuc_regs->setuplock);


 tmp = ioread32(&u3d->op_regs->usbcmd);
 tmp &= ~MV_U3D_CMD_RUN_STOP;
 iowrite32(tmp, &u3d->op_regs->usbcmd);
 dev_dbg(u3d->dev, "after u3d_stop, USBCMD 0x%x\n",
  ioread32(&u3d->op_regs->usbcmd));
}
