
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct se_cmd {unsigned char* t_task_cdb; int data_length; int se_dev; } ;
typedef int sense_reason_t ;
typedef int buf ;


 int GOOD ;
 int NO_SENSE ;
 int SE_SENSE_BUF ;
 int TCM_INVALID_CDB_FIELD ;
 int TCM_LOGICAL_UNIT_COMMUNICATION_FAILURE ;
 int UNIT_ATTENTION ;
 int core_scsi3_ua_clear_for_request_sense (struct se_cmd*,int*,int*) ;
 int memcpy (unsigned char*,unsigned char*,int ) ;
 int memset (unsigned char*,int ,int) ;
 int min_t (int ,int,int ) ;
 int pr_err (char*) ;
 int scsi_build_sense_buffer (int,unsigned char*,int ,int,int) ;
 int target_complete_cmd (struct se_cmd*,int ) ;
 int target_sense_desc_format (int ) ;
 unsigned char* transport_kmap_data_sg (struct se_cmd*) ;
 int transport_kunmap_data_sg (struct se_cmd*) ;
 int u32 ;

__attribute__((used)) static sense_reason_t spc_emulate_request_sense(struct se_cmd *cmd)
{
 unsigned char *cdb = cmd->t_task_cdb;
 unsigned char *rbuf;
 u8 ua_asc = 0, ua_ascq = 0;
 unsigned char buf[SE_SENSE_BUF];
 bool desc_format = target_sense_desc_format(cmd->se_dev);

 memset(buf, 0, SE_SENSE_BUF);

 if (cdb[1] & 0x01) {
  pr_err("REQUEST_SENSE description emulation not"
   " supported\n");
  return TCM_INVALID_CDB_FIELD;
 }

 rbuf = transport_kmap_data_sg(cmd);
 if (!rbuf)
  return TCM_LOGICAL_UNIT_COMMUNICATION_FAILURE;

 if (!core_scsi3_ua_clear_for_request_sense(cmd, &ua_asc, &ua_ascq))
  scsi_build_sense_buffer(desc_format, buf, UNIT_ATTENTION,
     ua_asc, ua_ascq);
 else
  scsi_build_sense_buffer(desc_format, buf, NO_SENSE, 0x0, 0x0);

 memcpy(rbuf, buf, min_t(u32, sizeof(buf), cmd->data_length));
 transport_kunmap_data_sg(cmd);

 target_complete_cmd(cmd, GOOD);
 return 0;
}
