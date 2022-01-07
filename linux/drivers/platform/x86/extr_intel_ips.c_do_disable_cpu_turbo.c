
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;


 int IA32_PERF_CTL ;
 int IA32_PERF_TURBO_DIS ;
 int rdmsrl (int ,int) ;
 int wrmsrl (int ,int) ;

__attribute__((used)) static void do_disable_cpu_turbo(void *data)
{
 u64 perf_ctl;

 rdmsrl(IA32_PERF_CTL, perf_ctl);
 if (!(perf_ctl & IA32_PERF_TURBO_DIS)) {
  perf_ctl |= IA32_PERF_TURBO_DIS;
  wrmsrl(IA32_PERF_CTL, perf_ctl);
 }
}
