
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct calling_interface_token {int tokenID; } ;


 int da_num_tokens ;
 struct calling_interface_token* da_tokens ;

struct calling_interface_token *dell_smbios_find_token(int tokenid)
{
 int i;

 if (!da_tokens)
  return ((void*)0);

 for (i = 0; i < da_num_tokens; i++) {
  if (da_tokens[i].tokenID == tokenid)
   return &da_tokens[i];
 }

 return ((void*)0);
}
