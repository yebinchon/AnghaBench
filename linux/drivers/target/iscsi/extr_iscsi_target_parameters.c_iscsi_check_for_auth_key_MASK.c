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
 int /*<<< orphan*/  FUNC0 (char*,char*) ; 

__attribute__((used)) static int FUNC1(char *key)
{
	/*
	 * RFC 1994
	 */
	if (!FUNC0(key, "CHAP_A") || !FUNC0(key, "CHAP_I") ||
	    !FUNC0(key, "CHAP_C") || !FUNC0(key, "CHAP_N") ||
	    !FUNC0(key, "CHAP_R"))
		return 1;

	/*
	 * RFC 2945
	 */
	if (!FUNC0(key, "SRP_U") || !FUNC0(key, "SRP_N") ||
	    !FUNC0(key, "SRP_g") || !FUNC0(key, "SRP_s") ||
	    !FUNC0(key, "SRP_A") || !FUNC0(key, "SRP_B") ||
	    !FUNC0(key, "SRP_M") || !FUNC0(key, "SRP_HM"))
		return 1;

	return 0;
}