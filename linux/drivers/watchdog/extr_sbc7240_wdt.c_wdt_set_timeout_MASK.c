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
 int SBC7240_MAX_TIMEOUT ; 
 int /*<<< orphan*/  SBC7240_SET_TIMEOUT_PORT ; 
 int /*<<< orphan*/  FUNC0 (unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,int) ; 
 int timeout ; 

__attribute__((used)) static int FUNC3(int t)
{
	if (t < 1 || t > SBC7240_MAX_TIMEOUT) {
		FUNC1("timeout value must be 1<=x<=%d\n", SBC7240_MAX_TIMEOUT);
		return -1;
	}
	/* set the timeout */
	FUNC0((unsigned)t, SBC7240_SET_TIMEOUT_PORT);
	timeout = t;
	FUNC2("timeout set to %d seconds\n", t);
	return 0;
}