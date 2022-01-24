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
struct device_node {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CONFIG_CPU_BIG_ENDIAN ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct device_node const*,char*) ; 

bool FUNC2(const struct device_node *device)
{
	if (FUNC1(device, "big-endian"))
		return true;
	if (FUNC0(CONFIG_CPU_BIG_ENDIAN) &&
	    FUNC1(device, "native-endian"))
		return true;
	return false;
}