
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint32_t ;
typedef int u8 ;
typedef scalar_t__ u32 ;
struct beiscsi_hba {int interface_handle; } ;
struct be_ip_addr_subnet_format {int dummy; } ;
struct be_dma_mem {struct be_cmd_set_ip_addr_req* va; } ;
struct TYPE_4__ {int size_of_structure; int subnet_mask; int addr; scalar_t__ ip_type; } ;
struct TYPE_5__ {scalar_t__ status; TYPE_1__ ip_addr; int interface_hndl; int action; } ;
struct TYPE_6__ {int record_entry_count; TYPE_2__ ip_record; } ;
struct be_cmd_set_ip_addr_req {TYPE_3__ ip_params; } ;


 scalar_t__ BEISCSI_IP_TYPE_V6 ;
 int CMD_SUBSYSTEM_ISCSI ;
 int EINVAL ;
 int IP_ACTION_ADD ;
 int IP_V4_LEN ;
 int IP_V6_LEN ;
 int KERN_ERR ;
 int OPCODE_COMMON_ISCSI_NTWK_MODIFY_IP_ADDR ;
 int __beiscsi_log (struct beiscsi_hba*,int ,char*,int,scalar_t__) ;
 int beiscsi_exec_nemb_cmd (struct beiscsi_hba*,struct be_dma_mem*,int *,int *,int ) ;
 int beiscsi_prep_nemb_cmd (struct beiscsi_hba*,struct be_dma_mem*,int ,int ,int) ;
 int memcpy (int ,int *,int ) ;

__attribute__((used)) static int
beiscsi_if_set_ip(struct beiscsi_hba *phba, u8 *ip,
    u8 *subnet, u32 ip_type)
{
 struct be_cmd_set_ip_addr_req *req;
 struct be_dma_mem nonemb_cmd;
 uint32_t ip_len;
 int rc;

 rc = beiscsi_prep_nemb_cmd(phba, &nonemb_cmd, CMD_SUBSYSTEM_ISCSI,
   OPCODE_COMMON_ISCSI_NTWK_MODIFY_IP_ADDR,
   sizeof(*req));
 if (rc)
  return rc;

 req = nonemb_cmd.va;
 req->ip_params.record_entry_count = 1;
 req->ip_params.ip_record.action = IP_ACTION_ADD;
 req->ip_params.ip_record.interface_hndl =
  phba->interface_handle;
 req->ip_params.ip_record.ip_addr.size_of_structure =
  sizeof(struct be_ip_addr_subnet_format);
 req->ip_params.ip_record.ip_addr.ip_type = ip_type;
 ip_len = (ip_type < BEISCSI_IP_TYPE_V6) ? IP_V4_LEN : IP_V6_LEN;
 memcpy(req->ip_params.ip_record.ip_addr.addr, ip, ip_len);
 if (subnet)
  memcpy(req->ip_params.ip_record.ip_addr.subnet_mask,
         subnet, ip_len);

 rc = beiscsi_exec_nemb_cmd(phba, &nonemb_cmd, ((void*)0), ((void*)0), 0);




 if (rc < 0 || req->ip_params.ip_record.status) {
  __beiscsi_log(phba, KERN_ERR,
       "BG_%d : failed to set IP: rc %d status %d\n",
       rc, req->ip_params.ip_record.status);
  if (req->ip_params.ip_record.status)
   rc = -EINVAL;
 }
 return rc;
}
