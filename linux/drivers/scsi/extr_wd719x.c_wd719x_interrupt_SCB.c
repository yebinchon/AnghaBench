
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_8__ {int SUE; int SCSI; } ;
union wd719x_regs {TYPE_4__ bytes; } ;
struct wd719x_scb {TYPE_2__* cmd; } ;
struct wd719x {TYPE_3__* pdev; } ;
struct TYPE_7__ {int dev; } ;
struct TYPE_6__ {TYPE_1__* device; } ;
struct TYPE_5__ {int id; } ;


 int DID_ABORT ;
 int DID_ERROR ;
 int DID_NO_CONNECT ;
 int DID_OK ;
 int DID_PARITY ;
 int DID_RESET ;
 int DID_TIME_OUT ;
 int dev_dbg (int *,char*) ;
 int dev_err (int *,char*,...) ;
 int dev_warn (int *,char*,int) ;
 int wd719x_finish_cmd (struct wd719x_scb*,int) ;

__attribute__((used)) static inline void wd719x_interrupt_SCB(struct wd719x *wd,
     union wd719x_regs regs,
     struct wd719x_scb *scb)
{
 int result;


 switch (regs.bytes.SUE) {
 case 137:
  result = DID_OK;
  break;
 case 135:
  dev_err(&wd->pdev->dev, "command rejected\n");
  result = DID_ERROR;
  break;
 case 133:
  dev_err(&wd->pdev->dev, "SCB queue is full\n");
  result = DID_ERROR;
  break;
 case 132:
  dev_dbg(&wd->pdev->dev, "SCB terminated by direct command\n");
  result = DID_ABORT;
  break;
 case 142:
 case 140:
  result = DID_ABORT;
  dev_err(&wd->pdev->dev, "DMA abort\n");
  break;
 case 141:
 case 139:
  result = DID_PARITY;
  dev_err(&wd->pdev->dev, "DMA parity error\n");
  break;
 case 131:
  result = DID_TIME_OUT;
  dev_dbg(&wd->pdev->dev, "selection timeout\n");
  break;
 case 134:
  dev_dbg(&wd->pdev->dev, "bus reset occurred\n");
  result = DID_RESET;
  break;
 case 144:
  dev_dbg(&wd->pdev->dev, "SCSI bus error\n");
  result = DID_ERROR;
  break;
 case 128:
  dev_err(&wd->pdev->dev, "wrong data transfer direction\n");
  result = DID_ERROR;
  break;
 case 146:
  dev_err(&wd->pdev->dev, "invalid SCSI phase\n");
  result = DID_ERROR;
  break;
 case 130:
  dev_err(&wd->pdev->dev, "record too long\n");
  result = DID_ERROR;
  break;
 case 143:
  dev_err(&wd->pdev->dev, "unexpected bus free\n");
  result = DID_NO_CONNECT;
  break;
 case 147:
  dev_dbg(&wd->pdev->dev, "auto request sense\n");
  if (regs.bytes.SCSI == 0)
   result = DID_OK;
  else
   result = DID_PARITY;
  break;
 case 138:
  dev_err(&wd->pdev->dev, "target id %d ignored command\n",
   scb->cmd->device->id);
  result = DID_NO_CONNECT;
  break;
 case 129:
  dev_err(&wd->pdev->dev, "reversed tags\n");
  result = DID_ERROR;
  break;
 case 145:
  dev_err(&wd->pdev->dev, "tag type not supported by target\n");
  result = DID_ERROR;
  break;
 case 136:
  dev_err(&wd->pdev->dev, "no SCAM soft ID available\n");
  result = DID_ERROR;
  break;
 default:
  dev_warn(&wd->pdev->dev, "unknown SUE error code: 0x%x\n",
    regs.bytes.SUE);
  result = DID_ERROR;
  break;
 }

 wd719x_finish_cmd(scb, result);
}
