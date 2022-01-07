
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct ctlr_info {TYPE_2__* pdev; } ;
struct CommandList {TYPE_1__* err_info; } ;
struct TYPE_4__ {int dev; } ;
struct TYPE_3__ {int ScsiStatus; } ;
 int dev_warn (int *,char*,int) ;

__attribute__((used)) static int hpsa_evaluate_tmf_status(struct ctlr_info *h,
     struct CommandList *cp)
{
 u8 tmf_status = cp->err_info->ScsiStatus;

 switch (tmf_status) {
 case 134:




 case 129:
  return 0;
 case 132:
 case 131:
 case 133:
 case 128:
 case 130:
  break;
 default:
  dev_warn(&h->pdev->dev, "Unknown TMF status: 0x%02x\n",
    tmf_status);
  break;
 }
 return -tmf_status;
}
