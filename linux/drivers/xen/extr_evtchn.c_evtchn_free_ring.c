
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int evtchn_port_t ;


 int kvfree (int *) ;

__attribute__((used)) static void evtchn_free_ring(evtchn_port_t *ring)
{
 kvfree(ring);
}
