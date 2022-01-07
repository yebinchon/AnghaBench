
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vfio_platform_device {struct device* device; } ;
struct device {int dummy; } ;
struct acpi_buffer {int * member_1; int member_0; } ;
typedef int acpi_status ;
typedef int acpi_handle ;


 int ACPI_ALLOCATE_BUFFER ;
 scalar_t__ ACPI_FAILURE (int ) ;
 int ACPI_HANDLE (struct device*) ;
 int EINVAL ;
 int ENOENT ;
 int acpi_evaluate_object (int ,char*,int *,struct acpi_buffer*) ;
 char* acpi_format_exception (int ) ;

__attribute__((used)) static int vfio_platform_acpi_call_reset(struct vfio_platform_device *vdev,
      const char **extra_dbg)
{
 return -ENOENT;

}
