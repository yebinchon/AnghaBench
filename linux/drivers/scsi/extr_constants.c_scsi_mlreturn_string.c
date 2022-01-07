
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct value_name_pair {int value; char const* name; } ;


 int ARRAY_SIZE (struct value_name_pair*) ;
 struct value_name_pair* scsi_mlreturn_arr ;

const char *scsi_mlreturn_string(int result)
{
 const struct value_name_pair *arr = scsi_mlreturn_arr;
 int k;

 for (k = 0; k < ARRAY_SIZE(scsi_mlreturn_arr); ++k, ++arr) {
  if (result == arr->value)
   return arr->name;
 }
 return ((void*)0);
}
