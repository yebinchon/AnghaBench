
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int adm; } ;


 TYPE_1__* ap_configuration ;
 int ap_test_config (int ,unsigned int) ;

int ap_test_config_ctrl_domain(unsigned int domain)
{
 if (!ap_configuration)
  return 0;
 return ap_test_config(ap_configuration->adm, domain);
}
