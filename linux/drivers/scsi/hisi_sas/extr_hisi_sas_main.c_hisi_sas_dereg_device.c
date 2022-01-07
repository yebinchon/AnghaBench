
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hisi_hba {TYPE_1__* hw; } ;
struct domain_device {int dummy; } ;
struct TYPE_2__ {int (* dereg_device ) (struct hisi_hba*,struct domain_device*) ;} ;


 int stub1 (struct hisi_hba*,struct domain_device*) ;

__attribute__((used)) static void hisi_sas_dereg_device(struct hisi_hba *hisi_hba,
    struct domain_device *device)
{
 if (hisi_hba->hw->dereg_device)
  hisi_hba->hw->dereg_device(hisi_hba, device);
}
