
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u8 ;


 size_t ACT_PUBLIC_MAX ;
 char const** _action_public_str ;

const char *action_public_str(u8 action)
{
 action = (action >= ACT_PUBLIC_MAX) ? ACT_PUBLIC_MAX : action;
 return _action_public_str[action];
}
