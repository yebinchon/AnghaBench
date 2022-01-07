
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int name; } ;
struct dlm_ls {TYPE_1__ ls_device; } ;


 int kfree (int ) ;
 int misc_deregister (TYPE_1__*) ;

int dlm_device_deregister(struct dlm_ls *ls)
{



 if (!ls->ls_device.name)
  return 0;

 misc_deregister(&ls->ls_device);
 kfree(ls->ls_device.name);
 return 0;
}
