
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vchiq_state {int recycle_event; struct vchiq_shared_state* local; } ;
struct vchiq_shared_state {int recycle; } ;
typedef int BITSET_T ;


 int BITSET_SIZE (int ) ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int VCHIQ_MAX_SERVICES ;
 int * kmalloc_array (int,int,int ) ;
 int process_free_queue (struct vchiq_state*,int *,size_t) ;
 int remote_event_wait (int *,int *) ;

__attribute__((used)) static int
recycle_func(void *v)
{
 struct vchiq_state *state = v;
 struct vchiq_shared_state *local = state->local;
 BITSET_T *found;
 size_t length;

 length = sizeof(*found) * BITSET_SIZE(VCHIQ_MAX_SERVICES);

 found = kmalloc_array(BITSET_SIZE(VCHIQ_MAX_SERVICES), sizeof(*found),
         GFP_KERNEL);
 if (!found)
  return -ENOMEM;

 while (1) {
  remote_event_wait(&state->recycle_event, &local->recycle);

  process_free_queue(state, found, length);
 }
 return 0;
}
