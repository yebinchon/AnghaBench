
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u16 ;
struct megasas_instance {TYPE_1__* host; } ;
struct TYPE_4__ {int max_index; struct megasas_instance** instance; } ;
struct TYPE_3__ {scalar_t__ host_no; } ;


 TYPE_2__ megasas_mgmt_info ;

__attribute__((used)) static struct megasas_instance *megasas_lookup_instance(u16 host_no)
{
 int i;

 for (i = 0; i < megasas_mgmt_info.max_index; i++) {

  if ((megasas_mgmt_info.instance[i]) &&
      (megasas_mgmt_info.instance[i]->host->host_no == host_no))
   return megasas_mgmt_info.instance[i];
 }

 return ((void*)0);
}
