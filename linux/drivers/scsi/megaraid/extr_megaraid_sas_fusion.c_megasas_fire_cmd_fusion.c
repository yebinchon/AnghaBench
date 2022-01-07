
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int low; } ;
union MEGASAS_REQUEST_DESCRIPTOR_UNION {TYPE_1__ u; } ;
struct megasas_instance {TYPE_2__* reg_set; scalar_t__ atomic_desc_support; } ;
struct TYPE_4__ {int inbound_single_queue_port; } ;


 int le32_to_cpu (int ) ;
 int megasas_write_64bit_req_desc (struct megasas_instance*,union MEGASAS_REQUEST_DESCRIPTOR_UNION*) ;
 int writel (int ,int *) ;

__attribute__((used)) static void
megasas_fire_cmd_fusion(struct megasas_instance *instance,
  union MEGASAS_REQUEST_DESCRIPTOR_UNION *req_desc)
{
 if (instance->atomic_desc_support)
  writel(le32_to_cpu(req_desc->u.low),
   &instance->reg_set->inbound_single_queue_port);
 else
  megasas_write_64bit_req_desc(instance, req_desc);
}
