
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct pqi_raid_error_info {int data_in_transferred; int sense_data_length; int data; } ;
struct TYPE_3__ {unsigned int payload_len; int sg_cnt; int sg_list; } ;
struct bsg_job {TYPE_1__ reply_payload; int reply; int reply_len; } ;
struct TYPE_4__ {int response_length; int response; } ;
struct bmic_csmi_smp_passthru_buffer {TYPE_2__ parameters; } ;


 unsigned int get_unaligned_le32 (int *) ;
 int le16_to_cpu (int ) ;
 int le32_to_cpu (int ) ;
 int memcpy (int ,int ,int ) ;
 int sg_copy_from_buffer (int ,int ,int *,int ) ;

__attribute__((used)) static unsigned int pqi_build_sas_smp_handler_reply(
 struct bmic_csmi_smp_passthru_buffer *smp_buf, struct bsg_job *job,
 struct pqi_raid_error_info *error_info)
{
 sg_copy_from_buffer(job->reply_payload.sg_list,
  job->reply_payload.sg_cnt, &smp_buf->parameters.response,
  le32_to_cpu(smp_buf->parameters.response_length));

 job->reply_len = le16_to_cpu(error_info->sense_data_length);
 memcpy(job->reply, error_info->data,
   le16_to_cpu(error_info->sense_data_length));

 return job->reply_payload.payload_len -
  get_unaligned_le32(&error_info->data_in_transferred);
}
