
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iss_device {int dev; } ;
struct iss_csi2_device {int regs1; int available; struct iss_device* iss; } ;


 int COMPLEXIO_CFG ;
 int COMPLEXIO_IRQENABLE ;
 int COMPLEXIO_IRQSTATUS ;
 int CSI2_PRINT_REGISTER (struct iss_device*,int ,int ) ;
 int CTRL ;
 int CTX_CTRL1 (int ) ;
 int CTX_CTRL2 (int ) ;
 int CTX_CTRL3 (int ) ;
 int CTX_DAT_OFST (int ) ;
 int CTX_IRQENABLE (int ) ;
 int CTX_IRQSTATUS (int ) ;
 int CTX_PING_ADDR (int ) ;
 int CTX_PONG_ADDR (int ) ;
 int DBG_H ;
 int DBG_P ;
 int IRQENABLE ;
 int IRQSTATUS ;
 int SHORT_PACKET ;
 int SYSCONFIG ;
 int SYSSTATUS ;
 int TIMING ;
 int dev_dbg (int ,char*) ;

__attribute__((used)) static void csi2_print_status(struct iss_csi2_device *csi2)
{
 struct iss_device *iss = csi2->iss;

 if (!csi2->available)
  return;

 dev_dbg(iss->dev, "-------------CSI2 Register dump-------------\n");

 CSI2_PRINT_REGISTER(iss, csi2->regs1, SYSCONFIG);
 CSI2_PRINT_REGISTER(iss, csi2->regs1, SYSSTATUS);
 CSI2_PRINT_REGISTER(iss, csi2->regs1, IRQENABLE);
 CSI2_PRINT_REGISTER(iss, csi2->regs1, IRQSTATUS);
 CSI2_PRINT_REGISTER(iss, csi2->regs1, CTRL);
 CSI2_PRINT_REGISTER(iss, csi2->regs1, DBG_H);
 CSI2_PRINT_REGISTER(iss, csi2->regs1, COMPLEXIO_CFG);
 CSI2_PRINT_REGISTER(iss, csi2->regs1, COMPLEXIO_IRQSTATUS);
 CSI2_PRINT_REGISTER(iss, csi2->regs1, SHORT_PACKET);
 CSI2_PRINT_REGISTER(iss, csi2->regs1, COMPLEXIO_IRQENABLE);
 CSI2_PRINT_REGISTER(iss, csi2->regs1, DBG_P);
 CSI2_PRINT_REGISTER(iss, csi2->regs1, TIMING);
 CSI2_PRINT_REGISTER(iss, csi2->regs1, CTX_CTRL1(0));
 CSI2_PRINT_REGISTER(iss, csi2->regs1, CTX_CTRL2(0));
 CSI2_PRINT_REGISTER(iss, csi2->regs1, CTX_DAT_OFST(0));
 CSI2_PRINT_REGISTER(iss, csi2->regs1, CTX_PING_ADDR(0));
 CSI2_PRINT_REGISTER(iss, csi2->regs1, CTX_PONG_ADDR(0));
 CSI2_PRINT_REGISTER(iss, csi2->regs1, CTX_IRQENABLE(0));
 CSI2_PRINT_REGISTER(iss, csi2->regs1, CTX_IRQSTATUS(0));
 CSI2_PRINT_REGISTER(iss, csi2->regs1, CTX_CTRL3(0));

 dev_dbg(iss->dev, "--------------------------------------------\n");
}
