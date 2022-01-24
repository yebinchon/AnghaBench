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

/* Variables and functions */
 int /*<<< orphan*/  aac_cfg_fops ; 
 scalar_t__ aac_cfg_major ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC2(void)
{
	aac_cfg_major = FUNC1(0, "aac", &aac_cfg_fops);
	if (aac_cfg_major < 0) {
		FUNC0("aacraid: unable to register \"aac\" device.\n");
	}
}