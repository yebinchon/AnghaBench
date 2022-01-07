
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int select_minor; int select_major; } ;
struct ufs_qcom_host {TYPE_1__ testbus; } ;


 int TSTBUS_UNIPRO ;

__attribute__((used)) static void ufs_qcom_get_default_testbus_cfg(struct ufs_qcom_host *host)
{

 host->testbus.select_major = TSTBUS_UNIPRO;
 host->testbus.select_minor = 37;
}
