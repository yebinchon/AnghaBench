
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * name; int minor; int * fops; } ;
struct dlm_ls {TYPE_1__ ls_device; } ;


 int ENOMEM ;
 int GFP_NOFS ;
 int MISC_DYNAMIC_MINOR ;
 int device_fops ;
 int kfree (int *) ;
 int * kzalloc (int,int ) ;
 int misc_register (TYPE_1__*) ;
 char* name_prefix ;
 int snprintf (char*,int,char*,char*,char*) ;
 int strlen (char*) ;

__attribute__((used)) static int dlm_device_register(struct dlm_ls *ls, char *name)
{
 int error, len;



 if (ls->ls_device.name)
  return 0;

 error = -ENOMEM;
 len = strlen(name) + strlen(name_prefix) + 2;
 ls->ls_device.name = kzalloc(len, GFP_NOFS);
 if (!ls->ls_device.name)
  goto fail;

 snprintf((char *)ls->ls_device.name, len, "%s_%s", name_prefix,
   name);
 ls->ls_device.fops = &device_fops;
 ls->ls_device.minor = MISC_DYNAMIC_MINOR;

 error = misc_register(&ls->ls_device);
 if (error) {
  kfree(ls->ls_device.name);



  ls->ls_device.name = ((void*)0);
 }
fail:
 return error;
}
