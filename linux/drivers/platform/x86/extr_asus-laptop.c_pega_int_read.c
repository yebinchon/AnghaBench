
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int value; } ;
union acpi_object {scalar_t__ type; TYPE_1__ integer; } ;
struct asus_laptop {int handle; } ;
struct acpi_buffer {union acpi_object* pointer; int * member_1; int member_0; } ;


 int ACPI_ALLOCATE_BUFFER ;
 scalar_t__ ACPI_TYPE_INTEGER ;
 int EIO ;
 int METHOD_PEGA_READ ;
 int write_acpi_int_ret (int ,int ,int,struct acpi_buffer*) ;

__attribute__((used)) static int pega_int_read(struct asus_laptop *asus, int arg, int *result)
{
 struct acpi_buffer buffer = { ACPI_ALLOCATE_BUFFER, ((void*)0) };
 int err = write_acpi_int_ret(asus->handle, METHOD_PEGA_READ, arg,
         &buffer);
 if (!err) {
  union acpi_object *obj = buffer.pointer;
  if (obj && obj->type == ACPI_TYPE_INTEGER)
   *result = obj->integer.value;
  else
   err = -EIO;
 }
 return err;
}
