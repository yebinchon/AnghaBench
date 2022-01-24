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
struct property {int dummy; } ;
struct device_node {int dummy; } ;

/* Variables and functions */
 int INT_MAX ; 
 struct property* FUNC0 (struct device_node const*,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct device_node const*,char const*) ; 
 scalar_t__ FUNC2 (char const*,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct device_node const*,char const*) ; 
 char* FUNC4 (struct property*,char const*) ; 
 int /*<<< orphan*/  FUNC5 (char const*) ; 

__attribute__((used)) static int FUNC6(const struct device_node *device,
				     const char *compat, const char *type, const char *name)
{
	struct property *prop;
	const char *cp;
	int index = 0, score = 0;

	/* Compatible match has highest priority */
	if (compat && compat[0]) {
		prop = FUNC0(device, "compatible", NULL);
		for (cp = FUNC4(prop, NULL); cp;
		     cp = FUNC4(prop, cp), index++) {
			if (FUNC2(cp, compat, FUNC5(compat)) == 0) {
				score = INT_MAX/2 - (index << 2);
				break;
			}
		}
		if (!score)
			return 0;
	}

	/* Matching type is better than matching name */
	if (type && type[0]) {
		if (!FUNC1(device, type))
			return 0;
		score += 2;
	}

	/* Matching name is a bit better than not */
	if (name && name[0]) {
		if (!FUNC3(device, name))
			return 0;
		score++;
	}

	return score;
}