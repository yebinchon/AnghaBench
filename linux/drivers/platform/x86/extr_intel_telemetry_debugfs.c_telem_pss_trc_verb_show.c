
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct seq_file {int dummy; } ;


 int EFAULT ;
 int TELEM_PSS ;
 int pr_err (char*,int) ;
 int seq_printf (struct seq_file*,char*,int ) ;
 int telemetry_get_trace_verbosity (int ,int *) ;

__attribute__((used)) static int telem_pss_trc_verb_show(struct seq_file *s, void *unused)
{
 u32 verbosity;
 int err;

 err = telemetry_get_trace_verbosity(TELEM_PSS, &verbosity);
 if (err) {
  pr_err("Get PSS Trace Verbosity Failed with Error %d\n", err);
  return -EFAULT;
 }

 seq_printf(s, "PSS Trace Verbosity %u\n", verbosity);
 return 0;
}
