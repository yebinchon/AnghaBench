
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct shared_info {int * evtchn_pending; } ;


 int BM (int *) ;
 struct shared_info* HYPERVISOR_shared_info ;
 int sync_test_bit (unsigned int,int ) ;

__attribute__((used)) static bool evtchn_2l_is_pending(unsigned port)
{
 struct shared_info *s = HYPERVISOR_shared_info;
 return sync_test_bit(port, BM(&s->evtchn_pending[0]));
}
