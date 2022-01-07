
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct platform_device {int dummy; } ;
struct TYPE_3__ {int control_type; int pcap_rapl_online; } ;


 int cpuhp_remove_state (int ) ;
 int powercap_unregister_control_type (int ) ;
 TYPE_1__ rapl_msr_priv ;
 int rapl_remove_platform_domain (TYPE_1__*) ;

__attribute__((used)) static int rapl_msr_remove(struct platform_device *pdev)
{
 cpuhp_remove_state(rapl_msr_priv.pcap_rapl_online);
 rapl_remove_platform_domain(&rapl_msr_priv);
 powercap_unregister_control_type(rapl_msr_priv.control_type);
 return 0;
}
