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
typedef  int /*<<< orphan*/  uint8_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/  const) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 

__attribute__((used)) static void FUNC2(const uint8_t *data, int len)
{
	int i;

	FUNC1("    ");
	for (i=0; i < len; i++)
		FUNC1("%.2x", data[i]);

	FUNC1("\n    ");
	for (i=0; i < len; i++) {
		if (FUNC0(data[i]))
			FUNC1("%c", data[i]);
		else
			FUNC1(".");
	}
	FUNC1("\n");
}