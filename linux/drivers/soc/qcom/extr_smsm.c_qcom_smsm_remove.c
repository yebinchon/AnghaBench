
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct qcom_smsm {unsigned int num_entries; int state; TYPE_1__* entries; } ;
struct platform_device {int dummy; } ;
struct TYPE_2__ {scalar_t__ domain; } ;


 int irq_domain_remove (scalar_t__) ;
 struct qcom_smsm* platform_get_drvdata (struct platform_device*) ;
 int qcom_smem_state_unregister (int ) ;

__attribute__((used)) static int qcom_smsm_remove(struct platform_device *pdev)
{
 struct qcom_smsm *smsm = platform_get_drvdata(pdev);
 unsigned id;

 for (id = 0; id < smsm->num_entries; id++)
  if (smsm->entries[id].domain)
   irq_domain_remove(smsm->entries[id].domain);

 qcom_smem_state_unregister(smsm->state);

 return 0;
}
