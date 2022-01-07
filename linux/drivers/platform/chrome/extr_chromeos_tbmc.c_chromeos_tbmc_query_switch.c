
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct input_dev {int dummy; } ;
struct acpi_device {int handle; } ;
typedef int acpi_status ;


 scalar_t__ ACPI_FAILURE (int ) ;
 int ENODEV ;
 int SW_TABLET_MODE ;
 int acpi_evaluate_integer (int ,char*,int *,unsigned long long*) ;
 int input_report_switch (struct input_dev*,int ,unsigned long long) ;
 int input_sync (struct input_dev*) ;

__attribute__((used)) static int chromeos_tbmc_query_switch(struct acpi_device *adev,
         struct input_dev *idev)
{
 unsigned long long state;
 acpi_status status;

 status = acpi_evaluate_integer(adev->handle, "TBMC", ((void*)0), &state);
 if (ACPI_FAILURE(status))
  return -ENODEV;


 input_report_switch(idev, SW_TABLET_MODE, state);
 input_sync(idev);

 return 0;
}
