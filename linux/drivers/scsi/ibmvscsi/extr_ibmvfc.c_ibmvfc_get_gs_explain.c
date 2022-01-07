
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u16 ;
struct TYPE_3__ {scalar_t__ fc_explain; char const* name; } ;


 int ARRAY_SIZE (TYPE_1__*) ;
 TYPE_1__* gs_explain ;
 char const* unknown_fc_explain ;

__attribute__((used)) static const char *ibmvfc_get_gs_explain(u16 status)
{
 int i;

 for (i = 0; i < ARRAY_SIZE(gs_explain); i++)
  if (gs_explain[i].fc_explain == status)
   return gs_explain[i].name;

 return unknown_fc_explain;
}
