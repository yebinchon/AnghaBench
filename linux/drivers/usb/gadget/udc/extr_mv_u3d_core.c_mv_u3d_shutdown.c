
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct platform_device {int dummy; } ;
struct mv_u3d {TYPE_1__* op_regs; } ;
struct TYPE_2__ {int usbcmd; } ;


 int MV_U3D_CMD_RUN_STOP ;
 int ioread32 (int *) ;
 int iowrite32 (int ,int *) ;
 struct mv_u3d* platform_get_drvdata (struct platform_device*) ;

__attribute__((used)) static void mv_u3d_shutdown(struct platform_device *dev)
{
 struct mv_u3d *u3d = platform_get_drvdata(dev);
 u32 tmp;

 tmp = ioread32(&u3d->op_regs->usbcmd);
 tmp &= ~MV_U3D_CMD_RUN_STOP;
 iowrite32(tmp, &u3d->op_regs->usbcmd);
}
