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
 int CHAP_DIGEST_MD5 ; 
 int CHAP_DIGEST_UNKNOWN ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 char* FUNC1 (char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 scalar_t__ FUNC4 (char*,char*) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*,int) ; 
 char* FUNC6 (char**,char*) ; 

__attribute__((used)) static int FUNC7(const char *a_str)
{
	char *tmp, *orig, *token;

	tmp = FUNC1(a_str, GFP_KERNEL);
	if (!tmp) {
		FUNC3("Memory allocation failed for CHAP_A temporary buffer\n");
		return CHAP_DIGEST_UNKNOWN;
	}
	orig = tmp;

	token = FUNC6(&tmp, "=");
	if (!token)
		goto out;

	if (FUNC4(token, "CHAP_A")) {
		FUNC3("Unable to locate CHAP_A key\n");
		goto out;
	}
	while (token) {
		token = FUNC6(&tmp, ",");
		if (!token)
			goto out;

		if (!FUNC5(token, "5", 1)) {
			FUNC2("Selected MD5 Algorithm\n");
			FUNC0(orig);
			return CHAP_DIGEST_MD5;
		}
	}
out:
	FUNC0(orig);
	return CHAP_DIGEST_UNKNOWN;
}