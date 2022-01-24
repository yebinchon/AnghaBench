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
struct device {int dummy; } ;

/* Variables and functions */
 scalar_t__ DEBUG ; 
 scalar_t__ debug ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (char*,unsigned int) ; 

__attribute__((used)) static void FUNC2(struct device *dev, unsigned int id)
{
	if (debug >= DEBUG)
		FUNC1("pcwd_isa_shutdown id=%d\n", id);

	FUNC0();
}