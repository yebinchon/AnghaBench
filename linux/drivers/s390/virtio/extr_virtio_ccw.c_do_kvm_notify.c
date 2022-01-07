
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct subchannel_id {int dummy; } ;


 int DIAG_STAT_X500 ;
 long __do_kvm_notify (struct subchannel_id,unsigned long,long) ;
 int diag_stat_inc (int ) ;

__attribute__((used)) static inline long do_kvm_notify(struct subchannel_id schid,
     unsigned long queue_index,
     long cookie)
{
 diag_stat_inc(DIAG_STAT_X500);
 return __do_kvm_notify(schid, queue_index, cookie);
}
