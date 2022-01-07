
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct csio_sm {int dummy; } ;


 int csio_set_state (struct csio_sm*,void*) ;

__attribute__((used)) static inline void
csio_init_state(struct csio_sm *smp, void *state)
{
 csio_set_state(smp, state);
}
