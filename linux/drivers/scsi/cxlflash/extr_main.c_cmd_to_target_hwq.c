
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct scsi_cmnd {int request; } ;
struct afu {int num_hwqs; int hwq_mode; int hwq_rr_count; } ;
struct Scsi_Host {int dummy; } ;





 int WARN_ON_ONCE (int) ;
 int blk_mq_unique_tag (int ) ;
 int blk_mq_unique_tag_to_hwq (int) ;
 int smp_processor_id () ;

__attribute__((used)) static u32 cmd_to_target_hwq(struct Scsi_Host *host, struct scsi_cmnd *scp,
        struct afu *afu)
{
 u32 tag;
 u32 hwq = 0;

 if (afu->num_hwqs == 1)
  return 0;

 switch (afu->hwq_mode) {
 case 129:
  hwq = afu->hwq_rr_count++ % afu->num_hwqs;
  break;
 case 128:
  tag = blk_mq_unique_tag(scp->request);
  hwq = blk_mq_unique_tag_to_hwq(tag);
  break;
 case 130:
  hwq = smp_processor_id() % afu->num_hwqs;
  break;
 default:
  WARN_ON_ONCE(1);
 }

 return hwq;
}
