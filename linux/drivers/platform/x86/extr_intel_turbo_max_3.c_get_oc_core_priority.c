
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;


 int BIT_ULL (int ) ;
 int EBUSY ;
 int ENXIO ;
 int MSR_OC_MAILBOX ;
 int MSR_OC_MAILBOX_BUSY_BIT ;
 int MSR_OC_MAILBOX_CMD_OFFSET ;
 int MSR_OC_MAILBOX_RSP_OFFSET ;
 int OC_MAILBOX_FC_CONTROL_CMD ;
 int OC_MAILBOX_RETRY_COUNT ;
 int pr_debug (char*,unsigned int,...) ;
 int rdmsrl_safe (int ,int*) ;
 int wrmsrl_safe (int ,int) ;

__attribute__((used)) static int get_oc_core_priority(unsigned int cpu)
{
 u64 value, cmd = OC_MAILBOX_FC_CONTROL_CMD;
 int ret, i;


 value = cmd << MSR_OC_MAILBOX_CMD_OFFSET;

 value |= BIT_ULL(MSR_OC_MAILBOX_BUSY_BIT);
 ret = wrmsrl_safe(MSR_OC_MAILBOX, value);
 if (ret) {
  pr_debug("cpu %d OC mailbox write failed\n", cpu);
  return ret;
 }

 for (i = 0; i < OC_MAILBOX_RETRY_COUNT; ++i) {
  ret = rdmsrl_safe(MSR_OC_MAILBOX, &value);
  if (ret) {
   pr_debug("cpu %d OC mailbox read failed\n", cpu);
   break;
  }

  if (value & BIT_ULL(MSR_OC_MAILBOX_BUSY_BIT)) {
   pr_debug("cpu %d OC mailbox still processing\n", cpu);
   ret = -EBUSY;
   continue;
  }

  if ((value >> MSR_OC_MAILBOX_RSP_OFFSET) & 0xff) {
   pr_debug("cpu %d OC mailbox cmd failed\n", cpu);
   ret = -ENXIO;
   break;
  }

  ret = value & 0xff;
  pr_debug("cpu %d max_ratio %d\n", cpu, ret);
  break;
 }

 return ret;
}
