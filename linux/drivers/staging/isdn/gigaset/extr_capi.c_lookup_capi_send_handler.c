
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u16 ;
typedef int * capi_send_handler_t ;
struct TYPE_3__ {scalar_t__ const cmd; int * handler; } ;


 size_t ARRAY_SIZE (TYPE_1__*) ;
 TYPE_1__* capi_send_handler_table ;

__attribute__((used)) static inline capi_send_handler_t lookup_capi_send_handler(const u16 cmd)
{
 size_t i;

 for (i = 0; i < ARRAY_SIZE(capi_send_handler_table); i++)
  if (capi_send_handler_table[i].cmd == cmd)
   return capi_send_handler_table[i].handler;
 return ((void*)0);
}
