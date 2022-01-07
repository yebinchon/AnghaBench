
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nvme_ns_ids {int uuid; int nguid; int eui64; } ;
struct nvme_ns_id_desc {scalar_t__ nidl; int nidt; } ;
struct nvme_ctrl {int device; int admin_q; } ;
struct TYPE_2__ {int cns; int nsid; int opcode; } ;
struct nvme_command {TYPE_1__ identify; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int NVME_IDENTIFY_DATA_SIZE ;
 int NVME_ID_CNS_NS_DESC_LIST ;

 int NVME_NIDT_EUI64_LEN ;

 int NVME_NIDT_NGUID_LEN ;

 int NVME_NIDT_UUID_LEN ;
 int cpu_to_le32 (unsigned int) ;
 int dev_warn (int ,char*,int) ;
 int kfree (void*) ;
 void* kzalloc (int,int ) ;
 int memcpy (int ,void*,int) ;
 int nvme_admin_identify ;
 int nvme_submit_sync_cmd (int ,struct nvme_command*,void*,int) ;
 int uuid_copy (int *,void*) ;

__attribute__((used)) static int nvme_identify_ns_descs(struct nvme_ctrl *ctrl, unsigned nsid,
  struct nvme_ns_ids *ids)
{
 struct nvme_command c = { };
 int status;
 void *data;
 int pos;
 int len;

 c.identify.opcode = nvme_admin_identify;
 c.identify.nsid = cpu_to_le32(nsid);
 c.identify.cns = NVME_ID_CNS_NS_DESC_LIST;

 data = kzalloc(NVME_IDENTIFY_DATA_SIZE, GFP_KERNEL);
 if (!data)
  return -ENOMEM;

 status = nvme_submit_sync_cmd(ctrl->admin_q, &c, data,
          NVME_IDENTIFY_DATA_SIZE);
 if (status)
  goto free_data;

 for (pos = 0; pos < NVME_IDENTIFY_DATA_SIZE; pos += len) {
  struct nvme_ns_id_desc *cur = data + pos;

  if (cur->nidl == 0)
   break;

  switch (cur->nidt) {
  case 130:
   if (cur->nidl != NVME_NIDT_EUI64_LEN) {
    dev_warn(ctrl->device,
      "ctrl returned bogus length: %d for NVME_NIDT_EUI64\n",
      cur->nidl);
    goto free_data;
   }
   len = NVME_NIDT_EUI64_LEN;
   memcpy(ids->eui64, data + pos + sizeof(*cur), len);
   break;
  case 129:
   if (cur->nidl != NVME_NIDT_NGUID_LEN) {
    dev_warn(ctrl->device,
      "ctrl returned bogus length: %d for NVME_NIDT_NGUID\n",
      cur->nidl);
    goto free_data;
   }
   len = NVME_NIDT_NGUID_LEN;
   memcpy(ids->nguid, data + pos + sizeof(*cur), len);
   break;
  case 128:
   if (cur->nidl != NVME_NIDT_UUID_LEN) {
    dev_warn(ctrl->device,
      "ctrl returned bogus length: %d for NVME_NIDT_UUID\n",
      cur->nidl);
    goto free_data;
   }
   len = NVME_NIDT_UUID_LEN;
   uuid_copy(&ids->uuid, data + pos + sizeof(*cur));
   break;
  default:

   len = cur->nidl;
   break;
  }

  len += sizeof(*cur);
 }
free_data:
 kfree(data);
 return status;
}
