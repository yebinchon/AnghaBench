
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ csio_sm_state_t ;


 scalar_t__ csio_get_state (void*) ;

__attribute__((used)) static inline bool
csio_match_state(void *smp, void *state)
{
 return (csio_get_state(smp) == (csio_sm_state_t)state);
}
