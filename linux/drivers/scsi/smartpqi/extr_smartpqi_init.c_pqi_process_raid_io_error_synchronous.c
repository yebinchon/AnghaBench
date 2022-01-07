
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pqi_raid_error_info {int data_out_result; int status; } ;


 int EIO ;
 int PQI_CMD_STATUS_ABORTED ;



 int SAM_STAT_CHECK_CONDITION ;
 int SAM_STAT_GOOD ;

__attribute__((used)) static int pqi_process_raid_io_error_synchronous(struct pqi_raid_error_info
      *error_info)
{
 int rc = -EIO;

 switch (error_info->data_out_result) {
 case 129:
  if (error_info->status == SAM_STAT_GOOD)
   rc = 0;
  break;
 case 128:
  if (error_info->status == SAM_STAT_GOOD ||
   error_info->status == SAM_STAT_CHECK_CONDITION)
   rc = 0;
  break;
 case 130:
  rc = PQI_CMD_STATUS_ABORTED;
  break;
 }

 return rc;
}
