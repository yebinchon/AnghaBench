
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct omap_sr {int ip_type; TYPE_1__* pdev; } ;
typedef int irqreturn_t ;
struct TYPE_4__ {int (* notify ) (struct omap_sr*,int ) ;} ;
struct TYPE_3__ {int dev; } ;


 int ERRCONFIG_V1 ;
 int IRQSTATUS ;
 int IRQ_HANDLED ;
 int IRQ_NONE ;


 int dev_err (int *,char*,int) ;
 TYPE_2__* sr_class ;
 int sr_read_reg (struct omap_sr*,int ) ;
 int sr_write_reg (struct omap_sr*,int ,int ) ;
 int stub1 (struct omap_sr*,int ) ;

__attribute__((used)) static irqreturn_t sr_interrupt(int irq, void *data)
{
 struct omap_sr *sr_info = data;
 u32 status = 0;

 switch (sr_info->ip_type) {
 case 129:

  status = sr_read_reg(sr_info, ERRCONFIG_V1);


  sr_write_reg(sr_info, ERRCONFIG_V1, status);
  break;
 case 128:

  status = sr_read_reg(sr_info, IRQSTATUS);


  sr_write_reg(sr_info, IRQSTATUS, status);
  break;
 default:
  dev_err(&sr_info->pdev->dev, "UNKNOWN IP type %d\n",
   sr_info->ip_type);
  return IRQ_NONE;
 }

 if (sr_class->notify)
  sr_class->notify(sr_info, status);

 return IRQ_HANDLED;
}
