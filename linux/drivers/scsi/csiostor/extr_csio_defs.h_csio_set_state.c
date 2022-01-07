
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct csio_sm {scalar_t__ sm_state; } ;
typedef scalar_t__ csio_sm_state_t ;



__attribute__((used)) static inline void
csio_set_state(void *smp, void *state)
{
 ((struct csio_sm *)smp)->sm_state = (csio_sm_state_t)state;
}
