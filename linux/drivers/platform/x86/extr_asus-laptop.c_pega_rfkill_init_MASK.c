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
struct asus_laptop {int /*<<< orphan*/  wwan; int /*<<< orphan*/  bluetooth; int /*<<< orphan*/  wlan; int /*<<< orphan*/  is_pega_lucid; } ;

/* Variables and functions */
 int ENODEV ; 
 int /*<<< orphan*/  PEGA_BLUETOOTH ; 
 int /*<<< orphan*/  PEGA_WLAN ; 
 int /*<<< orphan*/  PEGA_WWAN ; 
 int /*<<< orphan*/  RFKILL_TYPE_BLUETOOTH ; 
 int /*<<< orphan*/  RFKILL_TYPE_WLAN ; 
 int /*<<< orphan*/  RFKILL_TYPE_WWAN ; 
 int /*<<< orphan*/  FUNC0 (struct asus_laptop*) ; 
 int FUNC1 (struct asus_laptop*,int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct asus_laptop *asus)
{
	int ret = 0;

	if(!asus->is_pega_lucid)
		return -ENODEV;

	ret = FUNC1(asus, &asus->wlan, "pega-wlan",
				PEGA_WLAN, RFKILL_TYPE_WLAN);
	if(ret)
		goto exit;

	ret = FUNC1(asus, &asus->bluetooth, "pega-bt",
				PEGA_BLUETOOTH, RFKILL_TYPE_BLUETOOTH);
	if(ret)
		goto exit;

	ret = FUNC1(asus, &asus->wwan, "pega-wwan",
				PEGA_WWAN, RFKILL_TYPE_WWAN);

exit:
	if (ret)
		FUNC0(asus);

	return ret;
}