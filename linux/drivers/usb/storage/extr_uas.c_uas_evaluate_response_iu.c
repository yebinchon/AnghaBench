
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct scsi_cmnd {int result; } ;
struct response_iu {int response_code; } ;


 int DID_BAD_TARGET ;
 int DID_ERROR ;
 int DID_OK ;
 int DID_TARGET_FAILURE ;



 int uas_log_cmd_state (struct scsi_cmnd*,char*,int) ;

__attribute__((used)) static bool uas_evaluate_response_iu(struct response_iu *riu, struct scsi_cmnd *cmnd)
{
 u8 response_code = riu->response_code;

 switch (response_code) {
 case 130:
  cmnd->result = DID_BAD_TARGET << 16;
  break;
 case 128:
  cmnd->result = DID_OK << 16;
  break;
 case 129:
  cmnd->result = DID_TARGET_FAILURE << 16;
  break;
 default:
  uas_log_cmd_state(cmnd, "response iu", response_code);
  cmnd->result = DID_ERROR << 16;
  break;
 }

 return response_code == 128;
}
