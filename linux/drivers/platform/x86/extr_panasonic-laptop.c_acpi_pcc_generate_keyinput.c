
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pcc_acpi {int handle; struct input_dev* input_dev; } ;
struct input_dev {int dummy; } ;


 int ACPI_DB_ERROR ;
 int ACPI_DEBUG_PRINT (int ) ;
 scalar_t__ ACPI_FAILURE (int) ;
 int METHOD_HKEY_QUERY ;
 int acpi_evaluate_integer (int ,int ,int *,unsigned long long*) ;
 int sleep_keydown_seen ;
 int sparse_keymap_report_event (struct input_dev*,unsigned long long,unsigned long long,int) ;

__attribute__((used)) static void acpi_pcc_generate_keyinput(struct pcc_acpi *pcc)
{
 struct input_dev *hotk_input_dev = pcc->input_dev;
 int rc;
 unsigned long long result;

 rc = acpi_evaluate_integer(pcc->handle, METHOD_HKEY_QUERY,
       ((void*)0), &result);
 if (ACPI_FAILURE(rc)) {
  ACPI_DEBUG_PRINT((ACPI_DB_ERROR,
     "error getting hotkey status\n"));
  return;
 }


 if ((result & 0xf) == 0x7 || (result & 0xf) == 0xa) {
  if (result & 0x80)
   sleep_keydown_seen = 1;
  if (!sleep_keydown_seen)
   sparse_keymap_report_event(hotk_input_dev,
     result & 0xf, 0x80, 0);
 }

 if (!sparse_keymap_report_event(hotk_input_dev,
     result & 0xf, result & 0x80, 0))
  ACPI_DEBUG_PRINT((ACPI_DB_ERROR,
      "Unknown hotkey event: %d\n", result));
}
