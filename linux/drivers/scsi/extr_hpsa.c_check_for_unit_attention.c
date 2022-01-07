
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u8 ;
struct ctlr_info {int devname; TYPE_2__* pdev; } ;
struct CommandList {TYPE_1__* err_info; } ;
struct TYPE_4__ {int dev; } ;
struct TYPE_3__ {int SenseLen; int SenseInfo; } ;






 scalar_t__ UNIT_ATTENTION ;

 int decode_sense_data (int ,int,scalar_t__*,scalar_t__*,scalar_t__*) ;
 int dev_warn (int *,char*,int ) ;

__attribute__((used)) static int check_for_unit_attention(struct ctlr_info *h,
 struct CommandList *c)
{
 u8 sense_key, asc, ascq;
 int sense_len;

 if (c->err_info->SenseLen > sizeof(c->err_info->SenseInfo))
  sense_len = sizeof(c->err_info->SenseInfo);
 else
  sense_len = c->err_info->SenseLen;

 decode_sense_data(c->err_info->SenseInfo, sense_len,
    &sense_key, &asc, &ascq);
 if (sense_key != UNIT_ATTENTION || asc == 0xff)
  return 0;

 switch (asc) {
 case 129:
  dev_warn(&h->pdev->dev,
   "%s: a state change detected, command retried\n",
   h->devname);
  break;
 case 132:
  dev_warn(&h->pdev->dev,
   "%s: LUN failure detected\n", h->devname);
  break;
 case 130:
  dev_warn(&h->pdev->dev,
   "%s: report LUN data changed\n", h->devname);




  break;
 case 131:
  dev_warn(&h->pdev->dev,
   "%s: a power on or device reset detected\n",
   h->devname);
  break;
 case 128:
  dev_warn(&h->pdev->dev,
   "%s: unit attention cleared by another initiator\n",
   h->devname);
  break;
 default:
  dev_warn(&h->pdev->dev,
   "%s: unknown unit attention detected\n",
   h->devname);
  break;
 }
 return 1;
}
