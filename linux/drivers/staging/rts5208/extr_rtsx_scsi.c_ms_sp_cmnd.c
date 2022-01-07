
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_cmnd {scalar_t__* cmnd; } ;
struct rtsx_chip {int dummy; } ;


 scalar_t__ GET_MS_INFORMATION ;
 scalar_t__ MS_FORMAT ;
 int TRANSPORT_ERROR ;
 int get_ms_information (struct scsi_cmnd*,struct rtsx_chip*) ;
 int ms_format_cmnd (struct scsi_cmnd*,struct rtsx_chip*) ;

__attribute__((used)) static int ms_sp_cmnd(struct scsi_cmnd *srb, struct rtsx_chip *chip)
{
 int retval = TRANSPORT_ERROR;

 if (srb->cmnd[2] == MS_FORMAT)
  retval = ms_format_cmnd(srb, chip);





 return retval;
}
