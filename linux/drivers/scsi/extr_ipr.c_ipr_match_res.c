
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ipr_resource_entry {scalar_t__ res_handle; } ;
struct TYPE_2__ {scalar_t__ res_handle; } ;
struct ipr_cmnd {TYPE_1__ ioarcb; } ;



__attribute__((used)) static int ipr_match_res(struct ipr_cmnd *ipr_cmd, void *resource)
{
 struct ipr_resource_entry *res = resource;

 if (res && ipr_cmd->ioarcb.res_handle == res->res_handle)
  return 1;
 return 0;
}
