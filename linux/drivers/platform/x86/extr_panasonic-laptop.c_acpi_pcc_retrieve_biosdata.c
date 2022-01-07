
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int count; union acpi_object* elements; } ;
struct TYPE_3__ {int value; } ;
union acpi_object {scalar_t__ type; TYPE_2__ package; TYPE_1__ integer; } ;
struct pcc_acpi {int num_sifr; int* sinf; int handle; } ;
struct acpi_buffer {union acpi_object* pointer; int * member_1; int member_0; } ;
typedef scalar_t__ acpi_status ;


 int ACPI_ALLOCATE_BUFFER ;
 int ACPI_DB_ERROR ;
 int ACPI_DEBUG_PRINT (int ) ;
 scalar_t__ ACPI_FAILURE (scalar_t__) ;
 scalar_t__ ACPI_TYPE_INTEGER ;
 scalar_t__ ACPI_TYPE_PACKAGE ;
 scalar_t__ AE_ERROR ;
 scalar_t__ AE_OK ;
 int METHOD_HKEY_SINF ;
 scalar_t__ acpi_evaluate_object (int ,int ,int *,struct acpi_buffer*) ;
 int kfree (union acpi_object*) ;
 scalar_t__ likely (int) ;

__attribute__((used)) static int acpi_pcc_retrieve_biosdata(struct pcc_acpi *pcc)
{
 acpi_status status;
 struct acpi_buffer buffer = {ACPI_ALLOCATE_BUFFER, ((void*)0)};
 union acpi_object *hkey = ((void*)0);
 int i;

 status = acpi_evaluate_object(pcc->handle, METHOD_HKEY_SINF, ((void*)0),
          &buffer);
 if (ACPI_FAILURE(status)) {
  ACPI_DEBUG_PRINT((ACPI_DB_ERROR,
      "evaluation error HKEY.SINF\n"));
  return 0;
 }

 hkey = buffer.pointer;
 if (!hkey || (hkey->type != ACPI_TYPE_PACKAGE)) {
  ACPI_DEBUG_PRINT((ACPI_DB_ERROR, "Invalid HKEY.SINF\n"));
  status = AE_ERROR;
  goto end;
 }

 if (pcc->num_sifr < hkey->package.count) {
  ACPI_DEBUG_PRINT((ACPI_DB_ERROR,
     "SQTY reports bad SINF length\n"));
  status = AE_ERROR;
  goto end;
 }

 for (i = 0; i < hkey->package.count; i++) {
  union acpi_object *element = &(hkey->package.elements[i]);
  if (likely(element->type == ACPI_TYPE_INTEGER)) {
   pcc->sinf[i] = element->integer.value;
  } else
   ACPI_DEBUG_PRINT((ACPI_DB_ERROR,
      "Invalid HKEY.SINF data\n"));
 }
 pcc->sinf[hkey->package.count] = -1;

end:
 kfree(buffer.pointer);
 return status == AE_OK;
}
