
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct work_struct {int dummy; } ;


 int HZ ;
 int clamping ;
 int do_div (int,int) ;
 int pkg_cstate_ratio_cur ;
 int pkg_state_counter () ;
 int poll_pkg_cstate_work ;
 int rdtsc () ;
 int schedule_delayed_work (int *,int ) ;

__attribute__((used)) static void poll_pkg_cstate(struct work_struct *dummy)
{
 static u64 msr_last;
 static u64 tsc_last;

 u64 msr_now;
 u64 tsc_now;
 u64 val64;

 msr_now = pkg_state_counter();
 tsc_now = rdtsc();


 if (!msr_last || !tsc_last)
  pkg_cstate_ratio_cur = 1;
 else {
  if (tsc_now - tsc_last) {
   val64 = 100 * (msr_now - msr_last);
   do_div(val64, (tsc_now - tsc_last));
   pkg_cstate_ratio_cur = val64;
  }
 }


 msr_last = msr_now;
 tsc_last = tsc_now;

 if (1 == clamping)
  schedule_delayed_work(&poll_pkg_cstate_work, HZ);
}
