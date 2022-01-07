
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dlm_rcom {void* rc_seq_reply; void* rc_seq; void* rc_id; void* rc_result; void* rc_type; int rc_header; } ;


 void* cpu_to_le32 (void*) ;
 void* cpu_to_le64 (void*) ;
 int header_out (int *) ;

void dlm_rcom_out(struct dlm_rcom *rc)
{
 header_out(&rc->rc_header);

 rc->rc_type = cpu_to_le32(rc->rc_type);
 rc->rc_result = cpu_to_le32(rc->rc_result);
 rc->rc_id = cpu_to_le64(rc->rc_id);
 rc->rc_seq = cpu_to_le64(rc->rc_seq);
 rc->rc_seq_reply = cpu_to_le64(rc->rc_seq_reply);
}
