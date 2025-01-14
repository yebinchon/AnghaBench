
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t uint32_t ;
struct xen_mce {scalar_t__ apicid; int finished; int bank; int tsc; int addr; int status; int misc; int mcgcap; scalar_t__ cpuvendor; int extcpu; int cpu; int socketid; int mcgstatus; } ;
struct mcinfo_global {scalar_t__ mc_apicid; int mc_gstatus; } ;
struct mcinfo_common {scalar_t__ size; scalar_t__ type; } ;
struct mcinfo_bank {int mc_bank; int mc_tsc; int mc_addr; int mc_status; int mc_misc; } ;
struct mc_info {int dummy; } ;
typedef scalar_t__ __u8 ;
struct TYPE_4__ {scalar_t__ mc_apicid; TYPE_1__* mc_msrvalues; scalar_t__ mc_vendor; int mc_cpunr; int mc_chipid; } ;
struct TYPE_3__ {int value; } ;


 int ENODEV ;
 scalar_t__ MC_TYPE_BANK ;
 scalar_t__ MC_TYPE_EXTENDED ;
 scalar_t__ MC_TYPE_GLOBAL ;
 scalar_t__ MC_TYPE_RECOVERY ;
 size_t __MC_MSR_MCGCAP ;
 TYPE_2__* g_physinfo ;
 int memset (struct xen_mce*,int ,int) ;
 size_t ncpus ;
 int pr_warn (char*,...) ;
 scalar_t__ unlikely (int) ;
 int x86_mcinfo_lookup (struct mcinfo_common**,struct mc_info*,scalar_t__) ;
 struct mcinfo_common* x86_mcinfo_next (struct mcinfo_common*) ;
 int xen_mce_log (struct xen_mce*) ;

__attribute__((used)) static int convert_log(struct mc_info *mi)
{
 struct mcinfo_common *mic;
 struct mcinfo_global *mc_global;
 struct mcinfo_bank *mc_bank;
 struct xen_mce m;
 uint32_t i;

 mic = ((void*)0);
 x86_mcinfo_lookup(&mic, mi, MC_TYPE_GLOBAL);
 if (unlikely(!mic)) {
  pr_warn("Failed to find global error info\n");
  return -ENODEV;
 }

 memset(&m, 0, sizeof(struct xen_mce));

 mc_global = (struct mcinfo_global *)mic;
 m.mcgstatus = mc_global->mc_gstatus;
 m.apicid = mc_global->mc_apicid;

 for (i = 0; i < ncpus; i++)
  if (g_physinfo[i].mc_apicid == m.apicid)
   break;
 if (unlikely(i == ncpus)) {
  pr_warn("Failed to match cpu with apicid %d\n", m.apicid);
  return -ENODEV;
 }

 m.socketid = g_physinfo[i].mc_chipid;
 m.cpu = m.extcpu = g_physinfo[i].mc_cpunr;
 m.cpuvendor = (__u8)g_physinfo[i].mc_vendor;
 m.mcgcap = g_physinfo[i].mc_msrvalues[__MC_MSR_MCGCAP].value;

 mic = ((void*)0);
 x86_mcinfo_lookup(&mic, mi, MC_TYPE_BANK);
 if (unlikely(!mic)) {
  pr_warn("Fail to find bank error info\n");
  return -ENODEV;
 }

 do {
  if ((!mic) || (mic->size == 0) ||
      (mic->type != MC_TYPE_GLOBAL &&
       mic->type != MC_TYPE_BANK &&
       mic->type != MC_TYPE_EXTENDED &&
       mic->type != MC_TYPE_RECOVERY))
   break;

  if (mic->type == MC_TYPE_BANK) {
   mc_bank = (struct mcinfo_bank *)mic;
   m.misc = mc_bank->mc_misc;
   m.status = mc_bank->mc_status;
   m.addr = mc_bank->mc_addr;
   m.tsc = mc_bank->mc_tsc;
   m.bank = mc_bank->mc_bank;
   m.finished = 1;

   xen_mce_log(&m);
  }
  mic = x86_mcinfo_next(mic);
 } while (1);

 return 0;
}
