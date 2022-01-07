
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct input_dev {int dummy; } ;
struct acpi_device {int dummy; } ;


 int chromeos_tbmc_query_switch (struct acpi_device*,struct input_dev*) ;
 struct acpi_device* input_get_drvdata (struct input_dev*) ;

__attribute__((used)) static int chromeos_tbmc_open(struct input_dev *idev)
{
 struct acpi_device *adev = input_get_drvdata(idev);

 return chromeos_tbmc_query_switch(adev, idev);
}
