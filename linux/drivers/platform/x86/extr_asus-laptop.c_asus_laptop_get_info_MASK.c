#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {char* pointer; } ;
struct TYPE_3__ {char* pointer; } ;
union acpi_object {int type; TYPE_2__ buffer; TYPE_1__ string; } ;
typedef  char* uint ;
struct asus_laptop {int have_rsts; int /*<<< orphan*/  handle; int /*<<< orphan*/  name; int /*<<< orphan*/  dsdt_info; } ;
struct acpi_buffer {union acpi_object* pointer; int /*<<< orphan*/ * member_1; int /*<<< orphan*/  member_0; } ;
typedef  int /*<<< orphan*/  acpi_status ;

/* Variables and functions */
 int /*<<< orphan*/  ACPI_ALLOCATE_BUFFER ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ACPI_SIG_DSDT ; 
#define  ACPI_TYPE_BUFFER 129 
#define  ACPI_TYPE_STRING 128 
 int AE_OK ; 
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  METHOD_WL_STATUS ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,unsigned long long*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (union acpi_object*) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*,...) ; 
 int /*<<< orphan*/  FUNC7 (char*,char*) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 int /*<<< orphan*/  wapf ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,struct acpi_buffer*) ; 

__attribute__((used)) static int FUNC11(struct asus_laptop *asus)
{
	struct acpi_buffer buffer = { ACPI_ALLOCATE_BUFFER, NULL };
	union acpi_object *model = NULL;
	unsigned long long bsts_result;
	char *string = NULL;
	acpi_status status;

	/*
	 * Get DSDT headers early enough to allow for differentiating between
	 * models, but late enough to allow acpi_bus_register_driver() to fail
	 * before doing anything ACPI-specific. Should we encounter a machine,
	 * which needs special handling (i.e. its hotkey device has a different
	 * HID), this bit will be moved.
	 */
	status = FUNC3(ACPI_SIG_DSDT, 1, &asus->dsdt_info);
	if (FUNC0(status))
		FUNC8("Couldn't get the DSDT table header\n");

	/* We have to write 0 on init this far for all ASUS models */
	if (FUNC10(asus->handle, "INIT", 0, &buffer)) {
		FUNC6("Hotkey initialization failed\n");
		return -ENODEV;
	}

	/* This needs to be called for some laptops to init properly */
	status =
	    FUNC2(asus->handle, "BSTS", NULL, &bsts_result);
	if (FUNC0(status))
		FUNC8("Error calling BSTS\n");
	else if (bsts_result)
		FUNC7("BSTS called, 0x%02x returned\n",
		       (uint) bsts_result);

	/* This too ... */
	if (FUNC9(asus->handle, "CWAP", wapf))
		FUNC6("Error calling CWAP(%d)\n", wapf);
	/*
	 * Try to match the object returned by INIT to the specific model.
	 * Handle every possible object (or the lack of thereof) the DSDT
	 * writers might throw at us. When in trouble, we pass NULL to
	 * asus_model_match() and try something completely different.
	 */
	if (buffer.pointer) {
		model = buffer.pointer;
		switch (model->type) {
		case ACPI_TYPE_STRING:
			string = model->string.pointer;
			break;
		case ACPI_TYPE_BUFFER:
			string = model->buffer.pointer;
			break;
		default:
			string = "";
			break;
		}
	}
	asus->name = FUNC5(string, GFP_KERNEL);
	if (!asus->name) {
		FUNC4(buffer.pointer);
		return -ENOMEM;
	}

	if (string)
		FUNC7("  %s model detected\n", string);

	if (!FUNC1(asus->handle, METHOD_WL_STATUS, NULL))
		asus->have_rsts = true;

	FUNC4(model);

	return AE_OK;
}