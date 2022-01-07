
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct shared_info {int * evtchn_mask; } ;


 int BM (int *) ;
 struct shared_info* HYPERVISOR_shared_info ;
 int sync_test_and_set_bit (unsigned int,int ) ;

__attribute__((used)) static bool evtchn_2l_test_and_set_mask(unsigned port)
{
 struct shared_info *s = HYPERVISOR_shared_info;
 return sync_test_and_set_bit(port, BM(&s->evtchn_mask[0]));
}
