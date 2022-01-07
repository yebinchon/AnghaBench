
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct per_user_data {int ring_size; } ;



__attribute__((used)) static unsigned int evtchn_ring_offset(struct per_user_data *u,
           unsigned int idx)
{
 return idx & (u->ring_size - 1);
}
