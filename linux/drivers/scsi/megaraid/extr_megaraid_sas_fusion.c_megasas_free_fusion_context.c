
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ulong ;
struct megasas_instance {struct fusion_context* ctrl_context; } ;
struct fusion_context {int log_to_span_pages; scalar_t__ log_to_span; int load_balance_info_pages; scalar_t__ load_balance_info; } ;


 int free_pages (int ,int ) ;
 scalar_t__ is_vmalloc_addr (scalar_t__) ;
 int kfree (struct fusion_context*) ;
 int vfree (scalar_t__) ;

void
megasas_free_fusion_context(struct megasas_instance *instance)
{
 struct fusion_context *fusion = instance->ctrl_context;

 if (fusion) {
  if (fusion->load_balance_info) {
   if (is_vmalloc_addr(fusion->load_balance_info))
    vfree(fusion->load_balance_info);
   else
    free_pages((ulong)fusion->load_balance_info,
     fusion->load_balance_info_pages);
  }

  if (fusion->log_to_span) {
   if (is_vmalloc_addr(fusion->log_to_span))
    vfree(fusion->log_to_span);
   else
    free_pages((ulong)fusion->log_to_span,
        fusion->log_to_span_pages);
  }

  kfree(fusion);
 }
}
