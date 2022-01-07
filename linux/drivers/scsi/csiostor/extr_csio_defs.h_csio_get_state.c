
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct csio_sm {int sm_state; } ;
typedef int csio_sm_state_t ;



__attribute__((used)) static inline csio_sm_state_t
csio_get_state(void *smp)
{
 return ((struct csio_sm *)smp)->sm_state;
}
