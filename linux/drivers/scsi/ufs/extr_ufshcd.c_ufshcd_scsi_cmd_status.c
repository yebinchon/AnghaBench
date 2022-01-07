
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ufshcd_lrb {int dummy; } ;


 int COMMAND_COMPLETE ;
 int DID_ERROR ;
 int DID_OK ;





 int ufshcd_copy_sense_data (struct ufshcd_lrb*) ;

__attribute__((used)) static inline int
ufshcd_scsi_cmd_status(struct ufshcd_lrb *lrbp, int scsi_status)
{
 int result = 0;

 switch (scsi_status) {
 case 131:
  ufshcd_copy_sense_data(lrbp);

 case 130:
  result |= DID_OK << 16 |
     COMMAND_COMPLETE << 8 |
     scsi_status;
  break;
 case 128:
 case 132:
 case 129:
  ufshcd_copy_sense_data(lrbp);
  result |= scsi_status;
  break;
 default:
  result |= DID_ERROR << 16;
  break;
 }

 return result;
}
