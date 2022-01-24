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
struct sdebug_host_info {int dummy; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct sdebug_host_info*) ; 
 struct sdebug_host_info* FUNC1 (struct device*) ; 

__attribute__((used)) static void FUNC2(struct device *dev)
{
	struct sdebug_host_info *sdbg_host;

	sdbg_host = FUNC1(dev);
	FUNC0(sdbg_host);
}