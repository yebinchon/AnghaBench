
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct wmax_basic_args {int arg; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;
typedef int acpi_status ;


 scalar_t__ ACPI_SUCCESS (int ) ;
 int PAGE_SIZE ;
 int WMAX_METHOD_DEEP_SLEEP_STATUS ;
 int alienware_wmax_command (struct wmax_basic_args*,int ,int*) ;
 int pr_err (char*,int ) ;
 int scnprintf (char*,int ,char*) ;

__attribute__((used)) static ssize_t show_deepsleep_status(struct device *dev,
         struct device_attribute *attr, char *buf)
{
 acpi_status status;
 u32 out_data;
 struct wmax_basic_args in_args = {
  .arg = 0,
 };
 status = alienware_wmax_command(&in_args, WMAX_METHOD_DEEP_SLEEP_STATUS,
     (u32 *) &out_data);
 if (ACPI_SUCCESS(status)) {
  if (out_data == 0)
   return scnprintf(buf, PAGE_SIZE,
      "[disabled] s5 s5_s4\n");
  else if (out_data == 1)
   return scnprintf(buf, PAGE_SIZE,
      "disabled [s5] s5_s4\n");
  else if (out_data == 2)
   return scnprintf(buf, PAGE_SIZE,
      "disabled s5 [s5_s4]\n");
 }
 pr_err("alienware-wmi: unknown deep sleep status: %d\n", status);
 return scnprintf(buf, PAGE_SIZE, "disabled s5 s5_s4 [unknown]\n");
}
