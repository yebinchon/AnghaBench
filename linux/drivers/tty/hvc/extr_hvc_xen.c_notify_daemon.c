
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xencons_info {int evtchn; } ;


 int notify_remote_via_evtchn (int ) ;

__attribute__((used)) static inline void notify_daemon(struct xencons_info *cons)
{

 notify_remote_via_evtchn(cons->evtchn);
}
