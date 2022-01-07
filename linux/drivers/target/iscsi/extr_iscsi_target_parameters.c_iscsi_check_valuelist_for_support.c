
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iscsi_param {char* value; } ;


 char* strchr (char*,char) ;
 int strcmp (char*,char*) ;

__attribute__((used)) static char *iscsi_check_valuelist_for_support(
 struct iscsi_param *param,
 char *value)
{
 char *tmp1 = ((void*)0), *tmp2 = ((void*)0);
 char *acceptor_values = ((void*)0), *proposer_values = ((void*)0);

 acceptor_values = param->value;
 proposer_values = value;

 do {
  if (!proposer_values)
   return ((void*)0);
  tmp1 = strchr(proposer_values, ',');
  if (tmp1)
   *tmp1 = '\0';
  acceptor_values = param->value;
  do {
   if (!acceptor_values) {
    if (tmp1)
     *tmp1 = ',';
    return ((void*)0);
   }
   tmp2 = strchr(acceptor_values, ',');
   if (tmp2)
    *tmp2 = '\0';
   if (!strcmp(acceptor_values, proposer_values)) {
    if (tmp2)
     *tmp2 = ',';
    goto out;
   }
   if (tmp2)
    *tmp2++ = ',';

   acceptor_values = tmp2;
  } while (acceptor_values);
  if (tmp1)
   *tmp1++ = ',';
  proposer_values = tmp1;
 } while (proposer_values);

out:
 return proposer_values;
}
