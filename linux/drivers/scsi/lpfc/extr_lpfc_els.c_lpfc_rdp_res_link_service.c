
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_2__ {int els_req; } ;
struct fc_rdp_link_service_desc {void* length; TYPE_1__ payload; void* tag; } ;


 int RDP_LINK_SERVICE_DESC_TAG ;
 void* cpu_to_be32 (int) ;

__attribute__((used)) static uint32_t
lpfc_rdp_res_link_service(struct fc_rdp_link_service_desc *desc,
  uint32_t word0)
{

 desc->tag = cpu_to_be32(RDP_LINK_SERVICE_DESC_TAG);
 desc->payload.els_req = word0;
 desc->length = cpu_to_be32(sizeof(desc->payload));

 return sizeof(struct fc_rdp_link_service_desc);
}
