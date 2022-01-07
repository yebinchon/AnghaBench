
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct us_data {scalar_t__ subclass; } ;
struct TYPE_2__ {int parent; } ;
struct scsi_target {int no_report_luns; int pdt_1f_for_no_lun; TYPE_1__ dev; } ;


 scalar_t__ USB_SC_UFI ;
 int dev_to_shost (int ) ;
 struct us_data* host_to_us (int ) ;

__attribute__((used)) static int target_alloc(struct scsi_target *starget)
{
 struct us_data *us = host_to_us(dev_to_shost(starget->dev.parent));







 starget->no_report_luns = 1;
 if (us->subclass == USB_SC_UFI)
  starget->pdt_1f_for_no_lun = 1;

 return 0;
}
