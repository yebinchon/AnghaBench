
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int tag; } ;
struct viosrp_empty_iu {TYPE_2__ common; int buffer; } ;
struct scsi_info {int fast_fail; int dev; int state; void* empty_iu_tag; void* empty_iu_id; } ;
struct mad_common {void* status; int type; } ;
struct iu_entry {int dummy; } ;
struct TYPE_4__ {struct viosrp_empty_iu empty_iu; } ;
struct TYPE_6__ {TYPE_1__ mad; } ;


 long ADAPT_SUCCESS ;
 int CONNECTED ;




 int VIOSRP_MAD_FAILED ;
 int VIOSRP_MAD_NOT_SUPPORTED ;
 int VIOSRP_MAD_SUCCESS ;
 int be32_to_cpu (int ) ;
 void* be64_to_cpu (int ) ;
 void* cpu_to_be16 (int ) ;
 int dev_warn (int *,char*) ;
 long ibmvscsis_adapter_info (struct scsi_info*,struct iu_entry*) ;
 long ibmvscsis_cap_mad (struct scsi_info*,struct iu_entry*) ;
 TYPE_3__* vio_iu (struct iu_entry*) ;

__attribute__((used)) static long ibmvscsis_process_mad(struct scsi_info *vscsi, struct iu_entry *iue)
{
 struct mad_common *mad = (struct mad_common *)&vio_iu(iue)->mad;
 struct viosrp_empty_iu *empty;
 long rc = ADAPT_SUCCESS;

 switch (be32_to_cpu(mad->type)) {
 case 129:
  empty = &vio_iu(iue)->mad.empty_iu;
  vscsi->empty_iu_id = be64_to_cpu(empty->buffer);
  vscsi->empty_iu_tag = be64_to_cpu(empty->common.tag);
  mad->status = cpu_to_be16(VIOSRP_MAD_SUCCESS);
  break;
 case 131:
  rc = ibmvscsis_adapter_info(vscsi, iue);
  break;
 case 130:
  rc = ibmvscsis_cap_mad(vscsi, iue);
  break;
 case 128:
  if (vscsi->state == CONNECTED) {
   vscsi->fast_fail = 1;
   mad->status = cpu_to_be16(VIOSRP_MAD_SUCCESS);
  } else {
   dev_warn(&vscsi->dev, "fast fail mad sent after login\n");
   mad->status = cpu_to_be16(VIOSRP_MAD_FAILED);
  }
  break;
 default:
  mad->status = cpu_to_be16(VIOSRP_MAD_NOT_SUPPORTED);
  break;
 }

 return rc;
}
