
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_cmnd {int* cmnd; } ;
struct rtsx_chip {int dummy; } ;






 int TRANSPORT_ERROR ;
 int rw_mem_cmd_buf (struct scsi_cmnd*,struct rtsx_chip*) ;

__attribute__((used)) static int suit_cmd(struct scsi_cmnd *srb, struct rtsx_chip *chip)
{
 switch (srb->cmnd[3]) {
 case 129:
 case 131:
 case 128:
 case 130:
  return rw_mem_cmd_buf(srb, chip);
 default:
  return TRANSPORT_ERROR;
 }
}
