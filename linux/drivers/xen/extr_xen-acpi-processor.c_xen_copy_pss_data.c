
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct xen_processor_px {int dummy; } ;
struct xen_processor_performance {unsigned int state_count; } ;
struct acpi_processor_px {int dummy; } ;
struct acpi_processor {TYPE_1__* performance; } ;
struct TYPE_2__ {unsigned int state_count; int * states; } ;


 int BUILD_BUG_ON (int) ;
 int ENOMEM ;
 struct xen_processor_px* ERR_PTR (int ) ;
 int GFP_KERNEL ;
 struct xen_processor_px* kcalloc (unsigned int,int,int ) ;
 int memcpy (struct xen_processor_px*,int *,int) ;

__attribute__((used)) static struct xen_processor_px *
xen_copy_pss_data(struct acpi_processor *_pr,
    struct xen_processor_performance *dst_perf)
{
 struct xen_processor_px *dst_states = ((void*)0);
 unsigned int i;

 BUILD_BUG_ON(sizeof(struct xen_processor_px) !=
       sizeof(struct acpi_processor_px));

 dst_states = kcalloc(_pr->performance->state_count,
        sizeof(struct xen_processor_px), GFP_KERNEL);
 if (!dst_states)
  return ERR_PTR(-ENOMEM);

 dst_perf->state_count = _pr->performance->state_count;
 for (i = 0; i < _pr->performance->state_count; i++) {

  memcpy(&(dst_states[i]), &(_pr->performance->states[i]),
         sizeof(struct acpi_processor_px));
 }
 return dst_states;
}
