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
 int EIO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int*,char*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  hkey_handle ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 

__attribute__((used)) static int FUNC2(void)
{
	int mode = 0;

	if (!FUNC0(hkey_handle, &mode, "GTRW", "dd", 0)) {
		FUNC1("Cannot read adaptive keyboard mode\n");
		return -EIO;
	}

	return mode;
}