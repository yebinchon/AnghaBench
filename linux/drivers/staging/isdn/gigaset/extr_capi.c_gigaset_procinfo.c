
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct capi_ctr {char* name; } ;



__attribute__((used)) static char *gigaset_procinfo(struct capi_ctr *ctr)
{
 return ctr->name;
}
