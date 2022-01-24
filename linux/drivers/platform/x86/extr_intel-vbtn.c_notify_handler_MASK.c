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
typedef  int u32 ;
struct platform_device {int /*<<< orphan*/  dev; } ;
struct key_entry {scalar_t__ type; } ;
struct intel_vbtn_priv {int /*<<< orphan*/  input_dev; scalar_t__ wakeup_mode; } ;
typedef  int /*<<< orphan*/  acpi_handle ;

/* Variables and functions */
 scalar_t__ KE_IGNORE ; 
 scalar_t__ KE_SW ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int) ; 
 struct intel_vbtn_priv* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct key_entry* FUNC3 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int,unsigned int,int) ; 

__attribute__((used)) static void FUNC5(acpi_handle handle, u32 event, void *context)
{
	struct platform_device *device = context;
	struct intel_vbtn_priv *priv = FUNC1(&device->dev);
	unsigned int val = !(event & 1); /* Even=press, Odd=release */
	const struct key_entry *ke, *ke_rel;
	bool autorelease;

	if (priv->wakeup_mode) {
		ke = FUNC3(priv->input_dev, event);
		if (ke) {
			FUNC2(&device->dev);

			/*
			 * Switch events like tablet mode will wake the device
			 * and report the new switch position to the input
			 * subsystem.
			 */
			if (ke->type == KE_SW)
				FUNC4(priv->input_dev,
							   event,
							   val,
							   0);
			return;
		}
		goto out_unknown;
	}

	/*
	 * Even press events are autorelease if there is no corresponding odd
	 * release event, or if the odd event is KE_IGNORE.
	 */
	ke_rel = FUNC3(priv->input_dev, event | 1);
	autorelease = val && (!ke_rel || ke_rel->type == KE_IGNORE);

	if (FUNC4(priv->input_dev, event, val, autorelease))
		return;

out_unknown:
	FUNC0(&device->dev, "unknown event index 0x%x\n", event);
}