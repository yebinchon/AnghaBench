
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u32 ;
struct isci_host {size_t completion_queue_get; int * completion_queue; } ;


 scalar_t__ COMPLETION_QUEUE_CYCLE_BIT (int ) ;
 scalar_t__ NORMALIZE_GET_POINTER_CYCLE_BIT (size_t) ;
 size_t SMU_COMPLETION_QUEUE_GET_POINTER_MASK ;

__attribute__((used)) static bool sci_controller_completion_queue_has_entries(struct isci_host *ihost)
{
 u32 get_value = ihost->completion_queue_get;
 u32 get_index = get_value & SMU_COMPLETION_QUEUE_GET_POINTER_MASK;

 if (NORMALIZE_GET_POINTER_CYCLE_BIT(get_value) ==
     COMPLETION_QUEUE_CYCLE_BIT(ihost->completion_queue[get_index]))
  return 1;

 return 0;
}
