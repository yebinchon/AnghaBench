
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint16_t ;
struct mb_cmd_name {scalar_t__ cmd; char const* str; } ;


 int ARRAY_SIZE (struct mb_cmd_name*) ;
 struct mb_cmd_name* mb_str ;

__attribute__((used)) static const char *mb_to_str(uint16_t cmd)
{
 int i;
 struct mb_cmd_name *e;

 for (i = 0; i < ARRAY_SIZE(mb_str); i++) {
  e = mb_str + i;
  if (cmd == e->cmd)
   return e->str;
 }
 return "unknown";
}
