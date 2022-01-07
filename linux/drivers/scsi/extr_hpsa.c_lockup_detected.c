
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ctlr_info {int lockup_detected; } ;


 int get_cpu () ;
 int * per_cpu_ptr (int ,int) ;
 int put_cpu () ;

__attribute__((used)) static u32 lockup_detected(struct ctlr_info *h)
{
 int cpu;
 u32 rc, *lockup_detected;

 cpu = get_cpu();
 lockup_detected = per_cpu_ptr(h->lockup_detected, cpu);
 rc = *lockup_detected;
 put_cpu();
 return rc;
}
