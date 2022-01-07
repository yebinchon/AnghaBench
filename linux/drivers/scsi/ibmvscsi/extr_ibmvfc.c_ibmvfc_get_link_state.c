
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef enum ibmvfc_ae_link_state { ____Placeholder_ibmvfc_ae_link_state } ibmvfc_ae_link_state ;
struct TYPE_3__ {int state; char const* desc; } ;


 int ARRAY_SIZE (TYPE_1__*) ;
 TYPE_1__* link_desc ;

__attribute__((used)) static const char *ibmvfc_get_link_state(enum ibmvfc_ae_link_state state)
{
 int i;

 for (i = 0; i < ARRAY_SIZE(link_desc); i++)
  if (link_desc[i].state == state)
   return link_desc[i].desc;

 return "";
}
