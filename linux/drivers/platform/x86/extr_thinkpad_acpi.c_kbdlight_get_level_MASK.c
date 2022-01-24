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
 int ENXIO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int*,char*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  hkey_handle ; 

__attribute__((used)) static int FUNC1(void)
{
	int status = 0;

	if (!hkey_handle)
		return -ENXIO;

	if (!FUNC0(hkey_handle, &status, "MLCG", "dd", 0))
		return -EIO;

	if (status < 0)
		return status;

	return status & 0x3;
}