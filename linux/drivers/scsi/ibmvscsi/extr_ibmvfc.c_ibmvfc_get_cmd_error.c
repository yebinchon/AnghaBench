
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct TYPE_2__ {char const* name; } ;


 TYPE_1__* cmd_status ;
 int ibmvfc_get_err_index (int ,int ) ;
 char const* unknown_error ;

__attribute__((used)) static const char *ibmvfc_get_cmd_error(u16 status, u16 error)
{
 int rc = ibmvfc_get_err_index(status, error);
 if (rc >= 0)
  return cmd_status[rc].name;
 return unknown_error;
}
