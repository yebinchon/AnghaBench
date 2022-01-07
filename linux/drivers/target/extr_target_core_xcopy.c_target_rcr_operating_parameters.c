
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct se_cmd {int data_length; } ;
typedef int sense_reason_t ;


 int GOOD ;
 unsigned char RCR_OP_DATA_SEG_GRAN_LOG2 ;
 unsigned char RCR_OP_HELD_DATA_GRAN_LOG2 ;
 unsigned char RCR_OP_INLINE_DATA_GRAN_LOG2 ;
 unsigned char RCR_OP_MAX_CONCURR_COPIES ;
 int RCR_OP_MAX_DESC_LIST_LEN ;
 int RCR_OP_MAX_SEGMENT_LEN ;
 int RCR_OP_MAX_SG_DESC_COUNT ;
 int RCR_OP_MAX_TARGET_DESC_COUNT ;
 int RCR_OP_TOTAL_CONCURR_COPIES ;
 int TCM_INVALID_CDB_FIELD ;
 int TCM_NO_SENSE ;
 int TCM_OUT_OF_RESOURCES ;
 int pr_err (char*,...) ;
 int put_unaligned_be16 (int ,unsigned char*) ;
 int put_unaligned_be32 (int,unsigned char*) ;
 int target_complete_cmd (struct se_cmd*,int ) ;
 unsigned char* transport_kmap_data_sg (struct se_cmd*) ;
 int transport_kunmap_data_sg (struct se_cmd*) ;

__attribute__((used)) static sense_reason_t target_rcr_operating_parameters(struct se_cmd *se_cmd)
{
 unsigned char *p;

 p = transport_kmap_data_sg(se_cmd);
 if (!p) {
  pr_err("transport_kmap_data_sg failed in"
         " target_rcr_operating_parameters\n");
  return TCM_OUT_OF_RESOURCES;
 }

 if (se_cmd->data_length < 54) {
  pr_err("Receive Copy Results Op Parameters length"
         " too small: %u\n", se_cmd->data_length);
  transport_kunmap_data_sg(se_cmd);
  return TCM_INVALID_CDB_FIELD;
 }



 p[4] = 0x1;



 put_unaligned_be16(RCR_OP_MAX_TARGET_DESC_COUNT, &p[8]);



 put_unaligned_be16(RCR_OP_MAX_SG_DESC_COUNT, &p[10]);



 put_unaligned_be32(RCR_OP_MAX_DESC_LIST_LEN, &p[12]);



 put_unaligned_be32(RCR_OP_MAX_SEGMENT_LEN, &p[16]);



 put_unaligned_be32(0x0, &p[20]);



 put_unaligned_be32(0x0, &p[24]);



 put_unaligned_be32(0x0, &p[28]);



 put_unaligned_be16(RCR_OP_TOTAL_CONCURR_COPIES, &p[34]);



 p[36] = RCR_OP_MAX_CONCURR_COPIES;



 p[37] = RCR_OP_DATA_SEG_GRAN_LOG2;



 p[38] = RCR_OP_INLINE_DATA_GRAN_LOG2;



 p[39] = RCR_OP_HELD_DATA_GRAN_LOG2;



 p[43] = 0x2;



 p[44] = 0x02;
 p[45] = 0xe4;




 put_unaligned_be32(42, &p[0]);

 transport_kunmap_data_sg(se_cmd);
 target_complete_cmd(se_cmd, GOOD);

 return TCM_NO_SENSE;
}
