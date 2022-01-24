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
 int /*<<< orphan*/  DUMP_PREFIX_OFFSET ; 
 int /*<<< orphan*/  KERN_DEBUG ; 
 int ecryptfs_verbosity ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int,int,char*,int,int) ; 

void FUNC1(char *data, int bytes)
{
	if (ecryptfs_verbosity < 1)
		return;

	FUNC0(KERN_DEBUG, "ecryptfs: ", DUMP_PREFIX_OFFSET, 16, 1,
		       data, bytes, false);
}