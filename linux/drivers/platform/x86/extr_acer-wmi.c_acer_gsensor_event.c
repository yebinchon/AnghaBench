
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {int count; TYPE_2__* elements; } ;
union acpi_object {TYPE_3__ package; } ;
struct acpi_buffer {int length; union acpi_object* pointer; } ;
typedef int s16 ;
typedef int out_obj ;
typedef int acpi_status ;
struct TYPE_4__ {scalar_t__ value; } ;
struct TYPE_5__ {TYPE_1__ integer; } ;


 int ABS_X ;
 int ABS_Y ;
 int ABS_Z ;
 int ACER_CAP_ACCEL ;
 scalar_t__ ACPI_FAILURE (int ) ;
 int acer_wmi_accel_dev ;
 int acpi_evaluate_object (int ,char*,int *,struct acpi_buffer*) ;
 int gsensor_handle ;
 int has_cap (int ) ;
 int input_report_abs (int ,int ,int ) ;
 int input_sync (int ) ;

__attribute__((used)) static int acer_gsensor_event(void)
{
 acpi_status status;
 struct acpi_buffer output;
 union acpi_object out_obj[5];

 if (!has_cap(ACER_CAP_ACCEL))
  return -1;

 output.length = sizeof(out_obj);
 output.pointer = out_obj;

 status = acpi_evaluate_object(gsensor_handle, "RDVL", ((void*)0), &output);
 if (ACPI_FAILURE(status))
  return -1;

 if (out_obj->package.count != 4)
  return -1;

 input_report_abs(acer_wmi_accel_dev, ABS_X,
  (s16)out_obj->package.elements[0].integer.value);
 input_report_abs(acer_wmi_accel_dev, ABS_Y,
  (s16)out_obj->package.elements[1].integer.value);
 input_report_abs(acer_wmi_accel_dev, ABS_Z,
  (s16)out_obj->package.elements[2].integer.value);
 input_sync(acer_wmi_accel_dev);
 return 0;
}
