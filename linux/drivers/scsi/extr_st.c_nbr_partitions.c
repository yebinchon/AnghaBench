
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct scsi_tape {scalar_t__ ready; TYPE_1__* buffer; } ;
struct TYPE_2__ {int* b_data; } ;


 int DEBC_printk (struct scsi_tape*,char*,...) ;
 int EIO ;
 size_t MODE_HEADER_LENGTH ;
 int PART_PAGE ;
 size_t PP_OFF_NBR_ADD_PARTS ;
 scalar_t__ ST_READY ;
 int read_mode_page (struct scsi_tape*,int ,int) ;

__attribute__((used)) static int nbr_partitions(struct scsi_tape *STp)
{
 int result;

 if (STp->ready != ST_READY)
  return (-EIO);

 result = read_mode_page(STp, PART_PAGE, 1);

 if (result) {
  DEBC_printk(STp, "Can't read medium partition page.\n");
  result = (-EIO);
 } else {
  result = (STp->buffer)->b_data[MODE_HEADER_LENGTH +
           PP_OFF_NBR_ADD_PARTS] + 1;
  DEBC_printk(STp, "Number of partitions %d.\n", result);
 }

 return result;
}
