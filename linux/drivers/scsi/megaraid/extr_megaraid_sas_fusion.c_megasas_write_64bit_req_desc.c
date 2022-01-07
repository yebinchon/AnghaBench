
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int high; int low; } ;
union MEGASAS_REQUEST_DESCRIPTOR_UNION {TYPE_1__ u; } ;
typedef int u64 ;
struct megasas_instance {int hba_lock; TYPE_2__* reg_set; } ;
struct TYPE_4__ {int inbound_high_queue_port; int inbound_low_queue_port; } ;


 int le32_to_cpu (int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int writel (int,int *) ;
 int writeq (int,int *) ;

__attribute__((used)) static void
megasas_write_64bit_req_desc(struct megasas_instance *instance,
  union MEGASAS_REQUEST_DESCRIPTOR_UNION *req_desc)
{





 unsigned long flags;
 spin_lock_irqsave(&instance->hba_lock, flags);
 writel(le32_to_cpu(req_desc->u.low),
  &instance->reg_set->inbound_low_queue_port);
 writel(le32_to_cpu(req_desc->u.high),
  &instance->reg_set->inbound_high_queue_port);
 spin_unlock_irqrestore(&instance->hba_lock, flags);

}
