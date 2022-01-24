#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  u64 ;
typedef  int /*<<< orphan*/  u32 ;
struct qe_firmware_info {int /*<<< orphan*/ * vtraps; int /*<<< orphan*/  extended_modes; int /*<<< orphan*/  id; } ;
struct property {int length; int /*<<< orphan*/ * value; } ;
struct device_node {int dummy; } ;

/* Variables and functions */
 unsigned int FUNC0 (int /*<<< orphan*/ *) ; 
 struct property* FUNC1 (struct device_node*,char*,int /*<<< orphan*/ *) ; 
 struct device_node* FUNC2 (struct device_node*,char*) ; 
 char* FUNC3 (struct device_node*,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct device_node*) ; 
 struct qe_firmware_info qe_firmware_info ; 
 int qe_firmware_uploaded ; 
 struct device_node* FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char const*,int) ; 

struct qe_firmware_info *FUNC7(void)
{
	static int initialized;
	struct property *prop;
	struct device_node *qe;
	struct device_node *fw = NULL;
	const char *sprop;
	unsigned int i;

	/*
	 * If we haven't checked yet, and a driver hasn't uploaded a firmware
	 * yet, then check the device tree for information.
	 */
	if (qe_firmware_uploaded)
		return &qe_firmware_info;

	if (initialized)
		return NULL;

	initialized = 1;

	qe = FUNC5();
	if (!qe)
		return NULL;

	/* Find the 'firmware' child node */
	fw = FUNC2(qe, "firmware");
	FUNC4(qe);

	/* Did we find the 'firmware' node? */
	if (!fw)
		return NULL;

	qe_firmware_uploaded = 1;

	/* Copy the data into qe_firmware_info*/
	sprop = FUNC3(fw, "id", NULL);
	if (sprop)
		FUNC6(qe_firmware_info.id, sprop,
			sizeof(qe_firmware_info.id));

	prop = FUNC1(fw, "extended-modes", NULL);
	if (prop && (prop->length == sizeof(u64))) {
		const u64 *iprop = prop->value;

		qe_firmware_info.extended_modes = *iprop;
	}

	prop = FUNC1(fw, "virtual-traps", NULL);
	if (prop && (prop->length == 32)) {
		const u32 *iprop = prop->value;

		for (i = 0; i < FUNC0(qe_firmware_info.vtraps); i++)
			qe_firmware_info.vtraps[i] = iprop[i];
	}

	FUNC4(fw);

	return &qe_firmware_info;
}