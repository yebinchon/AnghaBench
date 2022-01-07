
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int value; } ;
struct TYPE_3__ {int count; union acpi_object* elements; } ;
union acpi_object {scalar_t__ type; TYPE_2__ integer; TYPE_1__ package; } ;
struct pci_dev {int dummy; } ;
struct hpx_type0 {int revision; int enable_perr; int enable_serr; int latency_timer; int cache_line_size; } ;
struct acpi_buffer {scalar_t__ pointer; int * member_1; int member_0; } ;
typedef int hpx0 ;
typedef int acpi_status ;
typedef int acpi_handle ;


 int ACPI_ALLOCATE_BUFFER ;
 scalar_t__ ACPI_FAILURE (int ) ;
 scalar_t__ ACPI_TYPE_INTEGER ;
 scalar_t__ ACPI_TYPE_PACKAGE ;
 int AE_ERROR ;
 int acpi_evaluate_object (int ,char*,int *,struct acpi_buffer*) ;
 int kfree (scalar_t__) ;
 int memset (struct hpx_type0*,int ,int) ;
 int program_hpx_type0 (struct pci_dev*,struct hpx_type0*) ;

__attribute__((used)) static acpi_status acpi_run_hpp(struct pci_dev *dev, acpi_handle handle)
{
 acpi_status status;
 struct acpi_buffer buffer = { ACPI_ALLOCATE_BUFFER, ((void*)0) };
 union acpi_object *package, *fields;
 struct hpx_type0 hpx0;
 int i;

 memset(&hpx0, 0, sizeof(hpx0));

 status = acpi_evaluate_object(handle, "_HPP", ((void*)0), &buffer);
 if (ACPI_FAILURE(status))
  return status;

 package = (union acpi_object *) buffer.pointer;
 if (package->type != ACPI_TYPE_PACKAGE ||
     package->package.count != 4) {
  status = AE_ERROR;
  goto exit;
 }

 fields = package->package.elements;
 for (i = 0; i < 4; i++) {
  if (fields[i].type != ACPI_TYPE_INTEGER) {
   status = AE_ERROR;
   goto exit;
  }
 }

 hpx0.revision = 1;
 hpx0.cache_line_size = fields[0].integer.value;
 hpx0.latency_timer = fields[1].integer.value;
 hpx0.enable_serr = fields[2].integer.value;
 hpx0.enable_perr = fields[3].integer.value;

 program_hpx_type0(dev, &hpx0);

exit:
 kfree(buffer.pointer);
 return status;
}
