
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct csio_sm {int (* sm_state ) (void*,int ) ;} ;


 int stub1 (void*,int ) ;

__attribute__((used)) static inline void
csio_post_event(void *smp, uint32_t evt)
{
 ((struct csio_sm *)smp)->sm_state(smp, evt);
}
