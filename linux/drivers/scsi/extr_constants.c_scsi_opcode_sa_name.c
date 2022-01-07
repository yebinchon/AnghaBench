
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct value_name_pair {int value; char* name; } ;
struct sa_name_list {int opcode; int arr_sz; struct value_name_pair* arr; } ;


 int ARRAY_SIZE (char**) ;
 int VENDOR_SPECIFIC_CDB ;
 char** cdb_byte0_names ;
 struct sa_name_list* sa_names_arr ;

bool scsi_opcode_sa_name(int opcode, int service_action,
    const char **cdb_name, const char **sa_name)
{
 struct sa_name_list *sa_name_ptr;
 const struct value_name_pair *arr = ((void*)0);
 int arr_sz, k;

 *cdb_name = ((void*)0);
 if (opcode >= VENDOR_SPECIFIC_CDB)
  return 0;

 if (opcode < ARRAY_SIZE(cdb_byte0_names))
  *cdb_name = cdb_byte0_names[opcode];

 for (sa_name_ptr = sa_names_arr; sa_name_ptr->arr; ++sa_name_ptr) {
  if (sa_name_ptr->opcode == opcode) {
   arr = sa_name_ptr->arr;
   arr_sz = sa_name_ptr->arr_sz;
   break;
  }
 }
 if (!arr)
  return 0;

 for (k = 0; k < arr_sz; ++k, ++arr) {
  if (service_action == arr->value)
   break;
 }
 if (k < arr_sz)
  *sa_name = arr->name;

 return 1;
}
