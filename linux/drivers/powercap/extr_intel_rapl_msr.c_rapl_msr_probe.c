
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct platform_device {int dummy; } ;
struct TYPE_3__ {int pcap_rapl_online; int control_type; int write_raw; int read_raw; } ;


 int CPUHP_AP_ONLINE_DYN ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int cpuhp_setup_state (int ,char*,int ,int ) ;
 int powercap_register_control_type (int *,char*,int *) ;
 int powercap_unregister_control_type (int ) ;
 int pr_debug (char*) ;
 int rapl_add_platform_domain (TYPE_1__*) ;
 int rapl_cpu_down_prep ;
 int rapl_cpu_online ;
 TYPE_1__ rapl_msr_priv ;
 int rapl_msr_read_raw ;
 int rapl_msr_write_raw ;

__attribute__((used)) static int rapl_msr_probe(struct platform_device *pdev)
{
 int ret;

 rapl_msr_priv.read_raw = rapl_msr_read_raw;
 rapl_msr_priv.write_raw = rapl_msr_write_raw;

 rapl_msr_priv.control_type = powercap_register_control_type(((void*)0), "intel-rapl", ((void*)0));
 if (IS_ERR(rapl_msr_priv.control_type)) {
  pr_debug("failed to register powercap control_type.\n");
  return PTR_ERR(rapl_msr_priv.control_type);
 }

 ret = cpuhp_setup_state(CPUHP_AP_ONLINE_DYN, "powercap/rapl:online",
    rapl_cpu_online, rapl_cpu_down_prep);
 if (ret < 0)
  goto out;
 rapl_msr_priv.pcap_rapl_online = ret;


 rapl_add_platform_domain(&rapl_msr_priv);

 return 0;

out:
 if (ret)
  powercap_unregister_control_type(rapl_msr_priv.control_type);
 return ret;
}
