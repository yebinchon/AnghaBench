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
struct asus_wmi {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ASUS_WMI_DEVID_FNLOCK ; 
 int ASUS_WMI_DSTS_PRESENCE_BIT ; 
 int ASUS_WMI_FNLOCK_BIOS_DISABLED ; 
 int /*<<< orphan*/  FUNC0 (struct asus_wmi*,int /*<<< orphan*/ ,int*) ; 

__attribute__((used)) static bool FUNC1(struct asus_wmi *asus)
{
	u32 result;

	FUNC0(asus, ASUS_WMI_DEVID_FNLOCK, &result);

	return (result & ASUS_WMI_DSTS_PRESENCE_BIT) &&
		!(result & ASUS_WMI_FNLOCK_BIOS_DISABLED);
}