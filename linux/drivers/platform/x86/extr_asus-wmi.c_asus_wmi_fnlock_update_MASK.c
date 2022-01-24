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
struct asus_wmi {int fnlock_locked; } ;

/* Variables and functions */
 int /*<<< orphan*/  ASUS_WMI_DEVID_FNLOCK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC1(struct asus_wmi *asus)
{
	int mode = asus->fnlock_locked;

	FUNC0(ASUS_WMI_DEVID_FNLOCK, mode, NULL);
}