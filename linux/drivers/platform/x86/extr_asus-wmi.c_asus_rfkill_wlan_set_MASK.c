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
struct asus_wmi {int /*<<< orphan*/  wmi_lock; } ;
struct asus_rfkill {struct asus_wmi* asus; } ;

/* Variables and functions */
 int FUNC0 (void*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC3(void *data, bool blocked)
{
	struct asus_rfkill *priv = data;
	struct asus_wmi *asus = priv->asus;
	int ret;

	/*
	 * This handler is enabled only if hotplug is enabled.
	 * In this case, the asus_wmi_set_devstate() will
	 * trigger a wmi notification and we need to wait
	 * this call to finish before being able to call
	 * any wmi method
	 */
	FUNC1(&asus->wmi_lock);
	ret = FUNC0(data, blocked);
	FUNC2(&asus->wmi_lock);
	return ret;
}