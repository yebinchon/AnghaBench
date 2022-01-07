
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct irb {int scsw; } ;
struct dasd_device {TYPE_1__* discipline; } ;
struct dasd_block {struct dasd_device* base; } ;
struct TYPE_2__ {int (* is_ese ) (struct dasd_device*) ;} ;


 scalar_t__ SCHN_STAT_INCORR_LEN ;
 int SNS1_FILE_PROTECTED ;
 int SNS1_NO_REC_FOUND ;
 int* dasd_get_sense (struct irb*) ;
 scalar_t__ scsw_cstat (int *) ;
 int stub1 (struct dasd_device*) ;

__attribute__((used)) static int dasd_ese_needs_format(struct dasd_block *block, struct irb *irb)
{
 struct dasd_device *device = ((void*)0);
 u8 *sense = ((void*)0);

 if (!block)
  return 0;
 device = block->base;
 if (!device || !device->discipline->is_ese)
  return 0;
 if (!device->discipline->is_ese(device))
  return 0;

 sense = dasd_get_sense(irb);
 if (!sense)
  return 0;

 return !!(sense[1] & SNS1_NO_REC_FOUND) ||
  !!(sense[1] & SNS1_FILE_PROTECTED) ||
  scsw_cstat(&irb->scsw) == SCHN_STAT_INCORR_LEN;
}
